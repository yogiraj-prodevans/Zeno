/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.prodevans.zeno.dao;

import com.prodevans.zeno.pojo.CategoryList;

/**
 *
 * @author rajanikant
 */
public interface CategoryListDAO {
    CategoryList getCategoryList(String protection_status);
}
