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
	
        /*
        * API url for get the address object list.
        */
	String GET_ADDRESS_OBJECT_LIST = HOST + "/api/config/devices/device/Branch01-OneEight/config/orgs/org-services/OneEight/objects/addresses/address";
	
        
        /*
        *  API url for create the address object.
        */
        String CREATE_ADDRESS_OBJECT = HOST + "/api/config/devices/device/Branch01-OneEight/config/orgs/org-services/OneEight/objects/addresses";
        
        
        /*
        *  API url for create the filter policy object.
        */
        String CREATE_POLICY_FILTER_OBJECT = HOST + "/api/config/devices/device/Branch01-OneEight/config/orgs/org-services/OneEight/security/profiles/url-filtering";
        
        /*
        *  API url for create the access policy rule object.
        */
        String CREATE_RULE_OBJECT = HOST + "/api/config/devices/device/Branch01-OneEight/config/orgs/org-services/OneEight/security/access-policies/access-policy-group/Default-Policy/rules";
        
        
        /**
         * API URL for find address object.
         */
        String SEARCH_ADDRESS_OBJECT = HOST + "/api/config/devices/device/Branch01-OneEight/config/orgs/org-services/OneEight/objects/addresses/address/{address_object_name}";
        
        /**
         * API URL for get list of objects.
         */
        String LIST_ACCESS_RULE = HOST + "/api/config/devices/device/Branch01-OneEight/config/orgs/org-services/OneEight/security/access-policies/access-policy-group/Default-Policy/rules/access-policy";
        
        
        /**
         * API URL for rearranging the rules.
         */
        String REORDER_RULE_LIST = HOST + "/api/config/devices/device/Branch01-OneEight/config/orgs/org-services/OneEight/security/access-policies/access-policy-group/Default-Policy/rules";
        
        
}
