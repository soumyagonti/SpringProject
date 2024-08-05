package com.examples.service;

import com.examples.pojo.Jewellery;

import java.util.List;

public interface MobileService
{
    /* this method is used to call the dao method
    *@param product
    * return type is String
    * */
    public String insertmobileDetais(Jewellery product);

    /* this method is used to call the dao method to fetch details
     * return type is List
     * */
    public List<Jewellery> getMobiles();

    /* this method is used to call the dao method to find details
     *@param id
     * return type is List
     * */
    public List<Jewellery> findMobile(int id);

    /* this method is used to call the dao method to delete details
     * @param id
     * return type is String
     * */
    public String deleteMobile(int id);

    /* this method is used to call the dao method to update details
     *@param id,name,color,price
     * no return type
     * */
    public void updateMobile(int id,String name,String color,int price);

}
