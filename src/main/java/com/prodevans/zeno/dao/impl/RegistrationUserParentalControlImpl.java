package com.prodevans.zeno.dao.impl;

import com.fasterxml.jackson.core.format.InputAccessor;
import com.prodevans.zeno.config.RestConfig;
import com.prodevans.zeno.dao.RegistrationUserParentalControlDAO;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.json.JSONArray;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.http.client.support.BasicAuthorizationInterceptor;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

/*
 * The RegistrationUserParentalControlImpl class used for the following purposes.
 * 1. Checking the user is registered with Parental control or not.
 * 2. If not registered with Parental control then register the user with parental control.
 */
@Component
public class RegistrationUserParentalControlImpl implements RegistrationUserParentalControlDAO {

    private RestTemplate restTemplate;
    private HttpEntity<String> entity;

    final static private Logger logger = LoggerFactory.getLogger(RegistrationUserParentalControlImpl.class);

    public RegistrationUserParentalControlImpl() {
        try {
            /*
			 * Create a trust manager that does not validate certificate chains. It required
			 * for the generating the SSL certificate. If not provided then while connection
			 * it throws SSL certification error.
             */
            TrustManager[] trustAllCerts = new TrustManager[]{new X509TrustManager() {
                @Override
                public X509Certificate[] getAcceptedIssuers() {
                    return null;
                }

                @Override
                public void checkClientTrusted(X509Certificate[] certs, String authType) {
                }

                @Override
                public void checkServerTrusted(X509Certificate[] certs, String authType) {
                }
            }};

            // Install the all-trusting trust manager
            SSLContext sc = SSLContext.getInstance("SSL");
            sc.init(null, trustAllCerts, new java.security.SecureRandom());
            HttpsURLConnection.setDefaultSSLSocketFactory(sc.getSocketFactory());

            // Create all-trusting host name verifier
            HostnameVerifier allHostsValid = new HostnameVerifier() {
                @Override
                public boolean verify(String hostname, SSLSession session) {
                    return true;
                }
            };

            // Install the all-trusting host verifier
            HttpsURLConnection.setDefaultHostnameVerifier(allHostsValid);

            logger.info("Cretificate installation is succesful.");

        } catch (NoSuchAlgorithmException | KeyManagementException e) {
            logger.error(e.getMessage());
        }
    }

    @Override
    public String getUserList() {
        /*
		 * Creation of the response object with the string data type. Because it return
		 * the JSON.
         */
        ResponseEntity<String> person;

        /*
		 * Headers for the response type if we want to return JSON response then we
		 * require to add.
         */
        HttpHeaders headers = new HttpHeaders();

        /*
		 * Adding of the response header with application/json type
         */
        headers.add("Accept", "application/json");

        /*
		 * Creation of the Entity object for the adding the headers into request.
         */
        entity = new HttpEntity<>(headers);

        /*
		 * Creation of REST TEMPLET object for the executing of the REST calls.
         */
        restTemplate = new RestTemplate();

        /*
		 * Adding the basic type of authentication on the REST TEMPLETE.
         */
        restTemplate.getInterceptors()
                .add(new BasicAuthorizationInterceptor(RestConfig.USER_NAME, RestConfig.PASSWORD));

        /*
		 * Execution of the REST call with basic authentication and JSON response type
         */
        person = restTemplate.exchange(RestConfig.GET_ADDRESS_OBJECT_LIST, HttpMethod.GET, entity, String.class);

        /*
		 * Returning the response body with string format that easily readable.
         */
        return person.getBody();
    }

    @Override
    public boolean checkRegistration(String user_name) {
         /**
        * change the user name as per the requirements of business logic.
        * user name ex. OE_000007_address_object
         */
        user_name = user_name.trim() + "_address_object";
        
        /**
		 * Creation of the response object with the string data type. Because it return
		 * the JSON.
         */
        ResponseEntity<String> person;

        /**
		 * Headers for the response type if we want to return JSON response then we
		 * require to add.
         */
        HttpHeaders headers = new HttpHeaders();

        /**
		 * Adding of the response header with application/json type
         */
        headers.add("Accept", "application/json");

        /**
		 * Adding of the request header with application/json type
         */
        headers.setContentType(MediaType.APPLICATION_JSON);

        /**
		 * Creation of the Entity object for the adding the headers and JSON request body into request.
         */
        entity = new HttpEntity<>( headers);

        /**
		 * Creation of REST TEMPLET object for the executing of the REST calls.
         */
        restTemplate = new RestTemplate();

        /**
		 * Adding the basic type of authentication on the REST TEMPLETE.
         */
        restTemplate.getInterceptors()
                .add(new BasicAuthorizationInterceptor(RestConfig.USER_NAME, RestConfig.PASSWORD));

        /**
		 * Execution of the REST call with basic authentication and JSON response type
         */
        try{
            Map<String, String> map = new HashMap<String, String>();
        map.put("address_object_name", user_name);
        person = restTemplate.exchange(RestConfig.SEARCH_ADDRESS_OBJECT, HttpMethod.GET, entity, String.class, map);
        
        //status code 200 specify the address is already present.
        if(person.getStatusCodeValue()==200){
            return true;
        }
        else{
            return false;
        }
        }catch(RestClientException e){
            if (e.getMessage().contains("404")) {
                logger.error("filter already exixts user_name : " + user_name );
                return false;
            } else {
                logger.error(e.getMessage());
                return false;
            }
        }
        
    }

    /**
     * This class is used for the registration of USER.
     *
     * @param user_name -- OE user name of the user.
     * @param ip_address id picked from the user session.
     * @return true after address created
     */
    @Override
    public boolean registerUser(String user_name, String ip_address) {
        /**
        * change the ip address as per the requirements of REST API.
        * user name ex. 192.168.1.100/32
         */
        ip_address = ip_address.trim() + "/32";

        /**
         * Business logic for the creating the IP ADDRESS object.
         */
        int address_object_result = 0;
        try {
            address_object_result = createAddressObject(user_name, ip_address);
        } catch (Exception e) {
            // If status code returns 409 means the address is already exists.
            if (e.getMessage().contains("409")) {
                logger.error("user already exixts user_name : " + user_name + ", and ip_address : " + ip_address);
            } else {
                logger.error(e.getMessage());
            }
        }

        // If status code returns 201 means the successful created the address object.
        if (address_object_result == 201) {
            logger.info("user address is created with the user_name : " + user_name + ", and ip_address : " + ip_address);
        }
        
         /**
         * Business logic for the creating the Filter object.
         */
        int filter_object_result = 0;
        try {
            filter_object_result = createProfileFilter(user_name);
        } catch (Exception e) {
            // If status code returns 409 means the filter is already exists.
            if (e.getMessage().contains("409")) {
                logger.error("filter already exixts user_name : " + user_name );
            } else {
                logger.error(e.getMessage());
            }
        }

        // If status code returns 201 means the successful created the filter object.
        if (filter_object_result == 201) {
            logger.info("filter is created with the user_name : " + user_name );
        }

        
        /**
         * Business logic for the creating the Access policy object.
         */
        int access_policy_rule_result = 0;
        try {
            access_policy_rule_result = createAccessPolicyRule(user_name);
        } catch (Exception e) {
            // If status code returns 409 means the access policy rule is already exists.
            if (e.getMessage().contains("409")) {
                logger.error("access policy rule already exixts user_name : " + user_name );
            } else {
                logger.error(e.getMessage());
            }
        }

        // If status code returns 201 means the successful created the access policy rule.
        if (access_policy_rule_result == 201) {
            logger.info("access policy rule is created with the user_name : " + user_name );
        }
        
        
        /**
         * Business logic for the rearranging[ make policy to top ] the Access policy object.
         */
        int access_policy_rule_rearrange = 0;
        try {
            access_policy_rule_rearrange = rearrangerRules(user_name);
        } catch (Exception e) {
                logger.error(e.getMessage());
           
        }

        // If status code returns 204 means the successful rearranging.
        if (access_policy_rule_rearrange == 204) {
            logger.info("access policy rule is created with the user_name : " + user_name );
        }
        return false;
    }

    /**
     * This is used for the creation of the IP address with specified user name.
     *
     * @param user_name -- OE username form inventum.
     * @param ip_address -- IP address from inventum.
     */
    private int createAddressObject(String user_name, String ip_address) {
        /*
        * change the user name as per the requirements of business logic.
        * user name ex. OE_000007_address_object
         */
        user_name = user_name.trim() + "_address_object";
        
        /*
		 * Creation of the response object with the string data type. Because it return
		 * the JSON.
         */
        ResponseEntity<String> person;

        /*
		 * Headers for the response type if we want to return JSON response then we
		 * require to add.
         */
        HttpHeaders headers = new HttpHeaders();

        /*
		 * Adding of the response header with application/json type
         */
        headers.add("Accept", "application/json");

        /*
		 * Adding of the request header with application/json type
         */
        headers.setContentType(MediaType.APPLICATION_JSON);

        /*
                * creation of the request body for address API call.
         */
        JSONObject request_data = new JSONObject();
        JSONObject request_attributes = new JSONObject();
        request_attributes.put("name", user_name);
        request_attributes.put("ipv4-prefix", ip_address);
        request_data.put("address", request_attributes);

        logger.error("Json data for the Address object : " + request_data.toString());
        /*
		 * Creation of the Entity object for the adding the headers and JSON request body into request.
         */
        entity = new HttpEntity<>(request_data.toString(), headers);

        /*
		 * Creation of REST TEMPLET object for the executing of the REST calls.
         */
        restTemplate = new RestTemplate();

        /*
		 * Adding the basic type of authentication on the REST TEMPLETE.
         */
        restTemplate.getInterceptors()
                .add(new BasicAuthorizationInterceptor(RestConfig.USER_NAME, RestConfig.PASSWORD));

        /*
		 * Execution of the REST call with basic authentication and JSON response type
         */
        person = restTemplate.exchange(RestConfig.CREATE_ADDRESS_OBJECT, HttpMethod.POST, entity, String.class);

        /*
		 * Returning the response body with string format that easily readable.
         */
        return person.getStatusCodeValue();
    }

    /** This for the create the filter policy for the user
     * @param user_name -- address object in the versa.
     * @return -- response from the user.
     */
    private int createProfileFilter(String user_name){
        /*
        * change the user name as per the requirements of business logic.
        * filter ex. OE_000007_filter_object
         */
        user_name = user_name.trim() + "_filter_object";
        
        /*
		 * Creation of the response object with the string data type. Because it return
		 * the JSON.
         */
        ResponseEntity<String> policy;

        /*
                    * Headers for the response type if we want to return JSON response then we
                    * require to add.
         */
        HttpHeaders headers = new HttpHeaders();

        /*
		 * Adding of the response header with application/json type
         */
        headers.add("Accept", "application/json");

        /*
		 * Adding of the request header with application/json type
         */
        headers.setContentType(MediaType.APPLICATION_JSON);

        /*
                * creation of the request body for policy filter API call.
         */
        JSONObject request_data = new JSONObject();
        JSONObject request_attributes = new JSONObject();
        request_attributes.put("name", user_name);
        request_attributes.put("default-action",new JSONObject().put("predefined", "allow"));
        request_attributes.put("decrypt-bypass", false);
        request_attributes.put("cloud-lookup-mode", "never");
        request_attributes.put("lef-profile", "Default-Logging-Profile");
        request_attributes.put("category-action-map", new JSONObject().put("category-action", new JSONArray()));
        
        JSONObject blacklist = new JSONObject();
        blacklist.put("action", new JSONObject().put("predefined", "block"));
        blacklist.put("patterns", new JSONArray());
        request_attributes.put("blacklist", blacklist);
        request_attributes.put("whitelist", new JSONObject());
        
        request_data.put("url-filtering-profile", request_attributes);

        logger.error("Json data for the Address object : " + request_data.toString());
        /*
		 * Creation of the Entity object for the adding the headers and JSON request body into request.
         */
        entity = new HttpEntity<>(request_data.toString(), headers);

        /*
		 * Creation of REST TEMPLET object for the executing of the REST calls.
         */
        restTemplate = new RestTemplate();

        /*
		 * Adding the basic type of authentication on the REST TEMPLETE.
         */
        restTemplate.getInterceptors()
                .add(new BasicAuthorizationInterceptor(RestConfig.USER_NAME, RestConfig.PASSWORD));

        /*
		 * Execution of the REST call with basic authentication and JSON response type
         */
        policy = restTemplate.exchange(RestConfig.CREATE_POLICY_FILTER_OBJECT, HttpMethod.POST, entity, String.class);

        /*
		 * Returning the response body with string format that easily readable.
         */
        return policy.getStatusCodeValue();
        
    }
    
    /**
     * createAccessPolicyRule method is used for the create the access policy rule.
     * @param user_name -- specify the user name form inventum
     * @return response code 201 for the success and 409 for conflict.
     */
   private int createAccessPolicyRule(String user_name){
       
       /**
        * change the user name as per the requirements of business logic.
        * user name ex. OE_000007_address_object
        * filter ex. OE_000007_filter_object
        * Access policy rule ex. OE_000007 _access_policy_rule
        */
       
        String access_policy_rule = user_name.trim() + "_access_policy_rule";
        String filter_policy = user_name.trim() + "_filter_object";
        String address_object = user_name.trim() + "_address_object";
        
        /*
		 * Creation of the response object with the string data type. Because it return
		 * the JSON.
         */
        ResponseEntity<String> rule;

        /*
                    * Headers for the response type if we want to return JSON response then we
                    * require to add.
         */
        HttpHeaders headers = new HttpHeaders();

        /*
		 * Adding of the response header with application/json type
         */
        headers.add("Accept", "application/json");

        /*
		 * Adding of the request header with application/json type
         */
        headers.setContentType(MediaType.APPLICATION_JSON);

        /*
                * creation of the request body for access policy rule API call.
         */
        JSONObject request_data = new JSONObject();
        JSONObject request_attributes = new JSONObject();
        request_attributes.put("name", access_policy_rule);
        
            JSONObject match =new JSONObject();
                JSONObject source =new JSONObject();
                    source.put("zone", new JSONObject());
                        JSONObject address = new JSONObject();
                            JSONArray addresses = new JSONArray();
                            addresses.put(address_object);
                        address.put("address-list", addresses);
                    source.put("address", address);
                    source.put("site-id", new JSONArray());
                    source.put("user", new JSONObject().put("user-type", "any"));
            match.put("source", source);

                JSONObject destination =new JSONObject();
                    destination.put("zone", new JSONObject());
                    destination.put("address", new JSONObject());
                    destination.put("site-id", new JSONArray());

            match.put("destination", destination);
            match.put("application", new JSONObject());
            match.put("ttl", new JSONObject());
        request_attributes.put("match", match);
        
            JSONObject set =new JSONObject();
                JSONObject lef =new JSONObject();
                    lef.put("profile", "Default-Logging-Profile");
                    lef.put("event", "both");
                    JSONObject send_pcap_data = new JSONObject();
                        send_pcap_data.put("enable", false);
                     lef.put("options", new JSONObject().put("send-pcap-data", send_pcap_data));
                set.put("lef", lef);
                set.put("action", "allow");
                JSONObject security_profile = new JSONObject();
                    JSONObject url_filtering = new JSONObject();
                    url_filtering.put("user-defined", filter_policy);
                security_profile.put("url-filtering", url_filtering);
                set.put("security-profile", security_profile);
        request_attributes.put("set", set);
        request_data.put("access-policy", request_attributes);

        logger.error("Json data for the access policy rule : " + request_data.toString());
        /*
		 * Creation of the Entity object for the adding the headers and JSON request body into request.
         */
        entity = new HttpEntity<>(request_data.toString(), headers);

        /*
		 * Creation of REST TEMPLET object for the executing of the REST calls.
         */
        restTemplate = new RestTemplate();

        /*
		 * Adding the basic type of authentication on the REST TEMPLETE.
         */
        restTemplate.getInterceptors()
                .add(new BasicAuthorizationInterceptor(RestConfig.USER_NAME, RestConfig.PASSWORD));

        /*
		 * Execution of the REST call with basic authentication and JSON response type
         */
        rule = restTemplate.exchange(RestConfig.CREATE_RULE_OBJECT, HttpMethod.POST, entity, String.class);

        /*
		 * Returning the response body with string format that easily readable.
         */
        return rule.getStatusCodeValue();
   }
   
   
   
   public int rearrangerRules(String user_name){
       
       /**
        * change the user name as per the requirements of business logic. user
        * name ex. OE_000007_address_object filter ex. OE_000007_filter_object
        * Access policy rule ex. OE_000007 _access_policy_rule
        */
       String access_policy_rule = user_name.trim() + "_access_policy_rule";

       //Creation of the response object with the string data type. Because it return
       //the JSON.
       ResponseEntity<String> rule;

       /**
        * Headers for the response type if we want to return JSON response then
        * we require to add.
        */
       HttpHeaders headers = new HttpHeaders();

       /**
        * Adding of the response header with application/json type
        */
       headers.add("Accept", "application/json");

       /*
		 * Adding of the request header with application/json type
        */
       headers.setContentType(MediaType.APPLICATION_JSON);

       /**
        * Creation of the Entity object for the adding the headers and JSON
        * request body into request.
        */
       entity = new HttpEntity<>(headers);

       /**
        * Creation of REST TEMPLET object for the executing of the REST calls.
        */
       restTemplate = new RestTemplate();

       /**
        * Adding the basic type of authentication on the REST TEMPLETE.
        */
       restTemplate.getInterceptors()
               .add(new BasicAuthorizationInterceptor(RestConfig.USER_NAME, RestConfig.PASSWORD));

       /**
        * Execution of the REST call with basic authentication and JSON response
        * type
        */
       rule = restTemplate.exchange(RestConfig.LIST_ACCESS_RULE, HttpMethod.GET, entity, String.class);

       /**
        * Returning the response body with string format that easily readable.
        */
       
       JSONObject root = new JSONObject( rule.getBody());
       
       System.out.println("data : "+root.getJSONArray("access-policy").getJSONObject(0).toString());
       
       JSONArray jarr = root.getJSONArray("access-policy");
              
       ArrayList<JSONObject> list_rearrange = new ArrayList<>();
       
       JSONObject target_object = null;
       for( int i=0 ; i < jarr.length() ; i++){
           if(jarr.getJSONObject(i).getString("name").equals(access_policy_rule)){
               target_object = jarr.getJSONObject(i);
           }
           else{
               list_rearrange.add(jarr.getJSONObject(i));
           }
       }
       
       list_rearrange.add(0, target_object);
       
       JSONObject new_rules = new JSONObject();
       JSONArray new_access_policy = new JSONArray(list_rearrange);
       new_rules.put("access-policy", new_access_policy );
       JSONObject rules = new JSONObject();
       rules.put("rules", new_rules);
       
       /**
        * Creation of the Entity object for the adding the headers and JSON
        * request body into request.
        */
       entity = new HttpEntity<>(rules.toString(),headers);
       
         /**
        * Execution of the REST call with basic authentication and JSON response
        * type
        */
       rule = restTemplate.exchange(RestConfig.REORDER_RULE_LIST, HttpMethod.PUT, entity, String.class);
       
       logger.info("Status code after the rearrangement : "+rule.getStatusCodeValue());
       
       return rule.getStatusCodeValue();
   }
}
