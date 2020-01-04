function edit() {
    var nameEdit = document.forms["editmenu"]["title"].value;
	var priceEdit = document.forms["editmenu"]["price"].value;
	var dateLaunch = document.forms["editmenu"]["dateofLaunch"].value;
	var category = document.getElementById("category");
    if (nameEdit == "") {
        alert("Title is required");
        return false;
    } else if ((nameEdit.length < 2) || (nameEdit.length > 65)) {
        alert("Title should have 2 to 65 characters");
        return false;
    }
    else if (priceEdit == "") {
        alert("Price is required");
        return false;
    } else if (isNaN(priceEdit)) {
        alert("Price has to be a number");
        return false;
    }
    else if (dateLaunch == "") {
        alert("Date of Launch is required");
        return false;
    }
    else if (category.value == "") {
        alert("Select a category");
        return false;
    }
}