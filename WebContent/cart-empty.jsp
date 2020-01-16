<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart Empty</title>
<link rel="stylesheet" type="text/css" href="styles/style.css" />
<link rel="shortcut icon" href="images/truyum-logo-dark.png" />
</head>
<body>
    <header> truYum <img src="images/truyum-logo-light.png" hspace="10"> <nav>
    <a href="ShowMenuItemListCustomer">Menu</a> <a id="cart" href="ShowCart">Cart</a> </nav> </header>
    <h1>
        <b>Cart</b>
    </h1>
    <p id="cart-empty">
        No items in cart. Use "Add to cart" option in <a href="ShowMenuItemListCustomer"> Menu
            item List</a>
    </p>
    <footer> Copyright &copy; 2019 </footer>
</body>
</html>