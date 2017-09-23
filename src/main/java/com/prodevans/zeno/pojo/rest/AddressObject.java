/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.prodevans.zeno.pojo.rest;

import com.google.gson.annotations.SerializedName;

/**
 *
 * @author rajanikant
 */

public class AddressObject {

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the ip_address
     */
    public String getIp_address() {
        return ip_address;
    }

    /**
     * @param ip_address the ip_address to set
     */
    public void setIp_address(String ip_address) {
        this.ip_address = ip_address;
    }
   
    @SerializedName("name")
    private String name;
    @SerializedName("ipv4-prefix")
    private String ip_address;
}
