package com.prodevans.zeno.dao.impl;

import org.springframework.stereotype.Component;

import com.prodevans.zeno.config.RestConfig;
import com.prodevans.zeno.dao.RegistrationUserParentalControlDAO;
import java.nio.charset.Charset;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.X509Certificate;

import javax.annotation.Resource;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

import org.apache.ws.commons.util.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.http.client.support.BasicAuthorizationInterceptor;
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

	public RegistrationUserParentalControlImpl() {
		try {
			/*
			 * Create a trust manager that does not validate certificate chains. It required
			 * for the generating the SSL certificate. If not provided then while connection
			 * it throws SSL certification error.
			 */
			TrustManager[] trustAllCerts = new TrustManager[] { new X509TrustManager() {
				public X509Certificate[] getAcceptedIssuers() {
					return null;
				}

				public void checkClientTrusted(X509Certificate[] certs, String authType) {
				}

				public void checkServerTrusted(X509Certificate[] certs, String authType) {
				}
			} };

			// Install the all-trusting trust manager
			SSLContext sc = SSLContext.getInstance("SSL");
			sc.init(null, trustAllCerts, new java.security.SecureRandom());
			HttpsURLConnection.setDefaultSSLSocketFactory(sc.getSocketFactory());

			// Create all-trusting host name verifier
			HostnameVerifier allHostsValid = new HostnameVerifier() {
				public boolean verify(String hostname, SSLSession session) {
					return true;
				}
			};

			// Install the all-trusting host verifier
			HttpsURLConnection.setDefaultHostnameVerifier(allHostsValid);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		} catch (KeyManagementException e) {
			e.printStackTrace();
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
		 * Creation of REST TEMPLET object for the executing of the REST calls.
		 */
		restTemplate = new RestTemplate();

		/*
		 * Creation of the Entity object for the adding the headers into request.
		 */
		entity = new HttpEntity<String>(headers);

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
		return person.getBody().toString();
	}

}
