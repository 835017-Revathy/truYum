package com.cognizant.truyum.dao;

import java.util.List;

import com.cognizant.truyum.model.MenuItem;

public interface MenuItemDao {
    public List<MenuItem> getMenuItemListAdmin(); // All items should be displayed here

    public List<MenuItem> getMenuItemListCustomer(); // Depends upon DO

    public void modifyMenuItem(MenuItem menuitem); // Update the menu item

    public MenuItem getMenuItem(long menuItemId); // Retrieve the particular menu item
}
