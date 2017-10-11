package com.prodevans.zeno.dao.impl;

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
import org.springframework.http.ResponseEntity;
import org.springframework.http.client.support.BasicAuthorizationInterceptor;
import org.springframework.web.client.RestTemplate;

import com.prodevans.zeno.config.RestConfig;
import com.prodevans.zeno.dao.ScheduleDAO;

public class ScheduleDAOImpl implements ScheduleDAO 
{

	private RestTemplate restTemplate;
    private HttpEntity<String> entity;

    final static private Logger logger = LoggerFactory.getLogger(ScheduleDAOImpl.class);
	
	
	public ScheduleDAOImpl() 
	{
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
	public boolean applyTimeSchedule(String domain_id,String name, String when, String time_of_day) 
	{
		
		JSONObject requestObject=new JSONObject();
		JSONArray jsonArray=new JSONArray();
		HashMap<String, String> values=new HashMap<String,String>();
		values.put("time-of-day", time_of_day);
		values.put("when", when);
		jsonArray.put(values);
		
		JSONObject requestInnerObject=new JSONObject();
		requestInnerObject.put("recurring", jsonArray);
		requestInnerObject.put("name", name);

		requestObject.put("schedule", requestInnerObject);

		System.out.println("request Object : "+requestObject);
		
		
		if(getAppliedSchedule(requestObject,domain_id,name.trim()))
		{
			return true;
		}
		else
		{
			return false;
		}	
	}
	
	
	@Override
	public boolean applyDaysSchedule(String domain_id, String name, ArrayList<String> when, String time_of_day) 
	{
		JSONObject requestObject=new JSONObject();
		JSONArray jsonArray=new JSONArray();
		
		for (String str : when) 
		{
			JSONObject innerJsonObject=new JSONObject();
			innerJsonObject.put("when", str);
			innerJsonObject.put("time-of-day", time_of_day);
			jsonArray.put(innerJsonObject);
		}
		
		JSONObject requestInnerObject=new JSONObject();
		requestInnerObject.put("recurring", jsonArray);
		requestInnerObject.put("name", name);

		requestObject.put("schedule", requestInnerObject);

		System.out.println("request Object : "+requestObject);
		
		
		if(getAppliedSchedule(requestObject,domain_id,name.trim()))
		{
			return true;
		}
		else
		{
			return false;
		}	
		
	}
	
	
	
	
	
	
	
	
	
	
	
	private boolean getAppliedSchedule(JSONObject requestObject,String doman_id,String schedule_name)
	{
        ResponseEntity<String> person;
        HttpHeaders headers = new HttpHeaders();
        headers.add("Accept", "application/json");
        headers.add("Content-Type", "application/json");
       
        /*
		 * Creation of the Entity object for the adding the headers into request.
         */
        entity = new HttpEntity<>(requestObject.toString().trim(),headers);

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
        Map<String, String> params = new HashMap<String, String>();
        params.put("domain_id", doman_id.trim());
        params.put("schedule_name", schedule_name.trim());
        try {
            person = restTemplate.exchange(RestConfig.CREATE_SCHEDULE, HttpMethod.PUT, entity, String.class, params);
            if(person.getStatusCodeValue() == 201 | person.getStatusCodeValue() == 204){
                logger.info("Daily Schedule Created");
                return true;
            }
            else{
                logger.info("Failed creating daily schedule");
                return false;
            }
        } catch (Exception ee) {
            if(ee.getMessage().contains("404")){
                logger.error("Failed creating daily schedule... with error");
            }
            else{
                logger.error("error: "+ee.getMessage());
            }
            //logger.error("Error body "+person.getBody());
            
        }
        return false;
	}

	
}
