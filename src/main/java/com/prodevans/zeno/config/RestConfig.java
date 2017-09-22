package com.prodevans.zeno.config;
/*
 * Rest configuration file is created for the store Global configuration 
 * of the Versa director.
 * Created by : RK
 */

public interface RestConfig {
	/*
	 * URL of the Versa for fetch the REST API.
	 */
	String URL = "https://52.172.187.91";
	
	/*
	 * PORT for the access the REST API
	 */
	String PORT = "9182";
	
	/*
	 * Created the HOST that have the URL:PORT 
	 * for easy access of host name.
	 */
	String HOST = URL + ":" + PORT;
	
	/*
	 * USER NAME of the access API.
	 */
	String USER_NAME = "Administrator";
	
	/*
	 * PASSWORD for t
	 */
	String PASSWORD = "Oneeight@admin18";
	
	String GET_ADDRESS_OBJECT_LIST = HOST + "/api/config/devices/device/Branch01-OneEight/config/orgs/org-services/OneEight/objects/addresses/address";
	
}
