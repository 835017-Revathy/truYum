package com.cognizant.truyum.dao;

import java.util.List;

import com.cognizant.truyum.model.MenuItem;

public class CartDaoCollectionImplTest {

    static CartDao cartDao = new CartDaoCollectionImpl();

    public static void main(String[] args) {
        testAddCartItem();
        testGetAllCartItems();
        testRemoveCartItem();
        testGetAllCartItems();
    }

    public static void testAddCartItem() {
        System.out.println("Products added into cart");
        cartDao.addCartItem(1, 2); // 1 is userId & 2 is MenuItemid
        cartDao.addCartItem(1, 3); //// 1 is userId & 3 is MenuItemid

    }

    public static void testGetAllCartItems() {
        try {
            System.out.println("Retriving all the items from the cart");
            List<MenuItem> list = cartDao.getAllCartItems(2).getMenuItemList();
            for (MenuItem menuItem : list) {
                System.out.println(menuItem);
            }
            System.out.println("Total Price: " + cartDao.getAllCartItems(1).getTotal());
        } catch (CartEmptyException e) {
            System.err.println(e);
        }

    }

    public static void testRemoveCartItem() {
        System.out.println("Remove Cart");
        cartDao.removeCartItem(1, 3);
    }
}
