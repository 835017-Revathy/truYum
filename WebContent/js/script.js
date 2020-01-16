function validateMenuItemForm() {
    var name = document.forms["menuItemForm"]["name"].value;
	var price = document.forms["menuItemForm"]["price"].value;
	var dateOfLaunch = document.forms["menuItemForm"]["dateOfLaunch"].value;
	var category = document.getElementById("category");
    if (name == "") {
        alert("Title is required");
        return false;
    } else if ((name.length < 2) || (name.length > 65)) {
        alert("Title should have 2 to 65 characters");
        return false;
    }
    else if (price == "") {
        alert("Price is required");
        return false;
    } else if (isNaN(price)) {
        alert("Price has to be a number");
        return false;
    }
    else if (dateOfLaunch == "") {
        alert("Date of Launch is required");
        return false;
    }
    else if (category.value == "") {
        alert("Select a category");
        return false;
    }
}