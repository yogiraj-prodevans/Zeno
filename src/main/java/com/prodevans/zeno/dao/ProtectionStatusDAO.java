/*
 * This Interface has method that return the details of the parental control.
 */
package com.prodevans.zeno.dao;

import com.prodevans.zeno.pojo.ParentalControlDetails;

/**
 *
 * @author rajanikant
 */
public interface ProtectionStatusDAO {
    ParentalControlDetails getProtectionDetails(String user_name);
    boolean protectionStatusUpdate(ParentalControlDetails controlDetails);
}
