package com.examples.dao;

import com.examples.pojo.Jewellery;

import java.util.List;

public interface MobileDao
{
    /* this method is used to insert the product details
     * @param product
     *return typ is int
     *  */
    public int insert(Jewellery product);

    /* this method is used to fetch the product details
     *return type is List
     * */
    public List<Jewellery> getMobiles();

    /* this method is used to find the product details
     * @param id
     * return type is List
     * */
    public List<Jewellery> findMobile(int id);

    /* this method is used to delete the product details
     * @param id
     *return type is String
     *  */
    public String deleteMobile(int id);

    /* this method is used to update the product details
     * @param id,name,color,price
     * return type is int
     * */
    public int updateMobile(int id, String name, String color, int price);
}
