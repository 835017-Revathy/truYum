<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Menu</title>
<link rel="stylesheet" type="text/css" href="styles/style.css" />
<link rel="shortcut icon" href="images/truyum-logo-dark.png" />
</head>
<body>

    <header> truYum <img src="images/truyum-logo-light.png" hspace="10"> <nav>
    <a href="ShowMenuItemListCustomer">Menu</a> <a id="cart" href="ShowCart">Cart</a> </nav> </header>
    <h3>Menu Items</h3>
    <c:if test="${addCartStatus==true }">
        <p id="cart-status">
            <b>Item Added to cart sucessfully</b>
        </p>
    </c:if>
    <table id="menu">
        <col width="180px">
        <col width="120px">
        <col width="70px">
        <col width="110px">
        <col width="90px">
        <tr>
            <th align="left">Name</th>
            <th align="center">Free Delivery</th>
            <th align="right">Price</th>
            <th align="center">Category</th>
            <th align="center">Action</th>
        </tr>
        <c:forEach items="${menuItem}" var="menuItem">
            <tr>
                <td>${menuItem.getName()}</td>
                <td align="center"><c:choose>
                        <c:when test="${menuItem.isFreedelivery()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>
                <td align="right"><f:formatNumber type="currency" minFractionDigits="2"
                        currencySymbol="Rs." value="${menuItem.getPrice()}"></f:formatNumber></td>
                <td align="center">${menuItem.getCategory()}</td>
                <td align="center"><a href="AddToCart?menuItemId=${menuItem.getId()}">Add
                        To Cart</td>
            </tr>
        </c:forEach>
    </table>
    <footer> Copyright &copy; 2019 </footer>
</body>
</html>