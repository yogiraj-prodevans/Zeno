/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.prodevans.zeno.dao.impl;

import com.prodevans.zeno.config.RestConfig;
import com.prodevans.zeno.dao.CategoryListDAO;
import com.prodevans.zeno.pojo.CategoryList;
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
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

/**
 *
 * @author rajanikant
 */
@Component
public class CategoryListDAOImpl implements CategoryListDAO{

     private RestTemplate restTemplate;
    private HttpEntity<String> entity;

    final static private Logger logger = LoggerFactory.getLogger(CategoryListDAOImpl.class);

    public CategoryListDAOImpl() {
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
    public CategoryList getCategoryList(String protection_status) {
        CategoryList list = new CategoryList();
        String responce_body = getCategory(protection_status);
//        JSONArray allow = new JSONObject(responce_body).getJSONArray("category-action").getJSONObject(0).getJSONObject("url-categories").getJSONArray("predefined");
//        ArrayList<String> sr = new ArrayList<String>();
//        for(Object str : allow ){
//            sr.add(str.toString());
//        }
//        
//        list.setBlocked_catogery(sr);
//        
        JSONArray category_action = new JSONObject(responce_body).getJSONArray("category-action");
        
        JSONArray block_rule = null;
        JSONArray allow_rule = null;
        for(Object obj : category_action){
            JSONObject jon = (JSONObject)obj;
            if(jon.getString("name").equals("Allowded")){
               allow_rule = jon.getJSONObject("url-categories").getJSONArray("predefined");
            }
            else{
                block_rule = jon.getJSONObject("url-categories").getJSONArray("predefined");
            }
        }
        ArrayList<String> sr = new ArrayList<String>();
        for (Object str : block_rule) {
            sr.add(str.toString());
        }
       list.setBlocked_catogery(sr);
       //sr.clear();
       ArrayList<String> br = new ArrayList<String>();
        for (Object str : allow_rule) {
            br.add(str.toString());
        }
        list.setAllowded_catogery(br);
        
        
        logger.info("Response body : \n"+responce_body);
        logger.info("List Allow : "+list.getAllowded_catogery().toString());
        logger.info("List Block : "+list.getBlocked_catogery().toString());
        return list;
    }
    
    private String getCategory(String protection_status){
        
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
        
        Map<String, String> params = new HashMap<String, String>();
        params.put("protection_status", protection_status);
        person = restTemplate.exchange(RestConfig.URL_CATEGORY_LIST_PROTECTION_LEVEL, HttpMethod.GET, entity, String.class,params);

        /*
		 * Returning the response body with string format that easily readable.
         */
        return person.getBody();
        
        
    }
    
}
