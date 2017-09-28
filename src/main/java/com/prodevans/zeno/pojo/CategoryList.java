/*
 * this class is created for the list all category by the protection level.
 */
package com.prodevans.zeno.pojo;

import java.util.ArrayList;

/**
 *
 * @author rajanikant
 */
public class CategoryList {
    private ArrayList<String> blocked_catogery;
    private ArrayList<String> allowded_catogery;

    /**
     * @return the blocked_catogery
     */
    public ArrayList<String> getBlocked_catogery() {
        return blocked_catogery;
    }

    /**
     * @param blocked_catogery the blocked_catogery to set
     */
    public void setBlocked_catogery(ArrayList<String> blocked_catogery) {
        this.blocked_catogery = blocked_catogery;
    }

    /**
     * @return the allowded_catogery
     */
    public ArrayList<String> getAllowded_catogery() {
        return allowded_catogery;
    }

    /**
     * @param allowded_catogery the allowded_catogery to set
     */
    public void setAllowded_catogery(ArrayList<String> allowded_catogery) {
        this.allowded_catogery = allowded_catogery;
    }
    
}
