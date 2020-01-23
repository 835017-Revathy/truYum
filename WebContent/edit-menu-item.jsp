<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Menu</title>
<script type="text/javascript" src="js/script.js"></script>
<link rel="stylesheet" type="text/css" href="styles/style.css" />
<link rel="shortcut icon" href="images/truyum-logo-dark.png" />
</head>
<body>
    <c:set var="menuItem" value="${menuItem}"></c:set>
    <header> truYum <img src="images/truyum-logo-light.png" hspace="10"> </img> <nav>
    <a href="ShowMenuItemListAdmin">Menu</a> </nav> </header>
    <h3>Edit Menu Item</h3>
    <form name="menuItemForm" action="EditMenuItem" method="post" autocomplete="off"
        onsubmit="return validateMenuItemForm()">
        <input type="hidden" name="id" value="${menuItem.getId()}" />
        <table id="edit-menu">
            <tr>
                <td><label for="name"><b>Name</b></label></td>
            </tr>
            <tr>
                <td><input type="text" name="name" id="name" value="${menuItem.getName()}"
                    size="73"></td>
            </tr>
        </table>
        <table id="edit-menu1">
            <tr>
                <td><label for="price"><b>Price Rs.</b></label></td>
                <td><label for="inStock"><b>Active</b></label></td>
                <td><label for="dateOfLaunch"><b>Date of Launch</b></label></td>
                <td><label for="category"><b>Category</b></label></td>
            </tr>
            <tr>
                <td align="right"><input type="text" name="price" id="price"
                    value="${menuItem.getPrice()}" /></td>
                <td align="right"><c:choose>
                        <c:when test="${menuItem.isActive()==true}">
                            <input type="radio" name="active" id="active" value="Yes"
                                checked="checked">Yes
                            <input type="radio" name="active" id="active" value="No">No
                        </c:when>
                        <c:otherwise>
                            <input type="radio" name="active" id="active" value="Yes">Yes
                    <input type="radio" name="active" id="active" value="No" checked="checked">No
                        </c:otherwise>
                    </c:choose></td>
                <td align="right"><f:formatDate value="${menuItem.getDateOfLaunch()}"
                        var="dateOfLaunch" pattern="dd/MM/yyyy"></f:formatDate><input type="text"
                    name="dateOfLaunch" id="dateOfLaunch" value="${dateOfLaunch}"></td>
                <td><select name="category" id="category">
                        <option value="${menuItem.getCategory()}">${menuItem.getCategory()}</option>
                        <option value="MainCourse">Main Course</option>
                        <option value="Starters">Starters</option>
                        <option value="Desserts">Desserts</option>
                        <option value="Drinks">Drinks</option>
                </select></td>
            </tr>
            <tr>
                <td><c:choose>
                        <c:when test="${menuItem.isFreedelivery()==true}">
                            <input type="checkbox" name="freeDelivery" id="freedelivery" value="Yes"
                                checked="checked" />
                        </c:when>
                        <c:otherwise>
                            <input type="checkbox" name="freeDelivery" id="freedelivery" value="No" />
                        </c:otherwise>
                    </c:choose></td>
            </tr>
            <tr>
                <td><input type="submit" value="Save" id="submit"></td>
            </tr>
        </table>
    </form>
    <footer> Copyright &copy; 2019 </footer>

</body>
</html>