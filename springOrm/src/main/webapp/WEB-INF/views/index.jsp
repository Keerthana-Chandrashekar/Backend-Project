<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>home page</title>
</head>
<style>
	body {
		height: 500px;
	    background-image: url("https://www.aihr.com/wp-content/uploads/employee-relations-background-and-featured-image.png");
	    background-repeat: no-repeat;
	    background-size: cover;
	    width: 500px;
	    padding: 35px;
	    font-family: monospace;
	}
	
	button {
		background-color: #4CAF50; /* Green */
		  border: none;
		  color: white;
		  padding: 5px 10px;
		  text-align: center;
		  text-decoration: none;
		  display: inline-block;
		  font-size: 12px;
		  margin: 4px 2px;
		  cursor: pointer;
		  border-radius: 2px;
		  min-width: 55px;
		  margin-right: 15px;
	}
	
	.button2 {background-color: #FFA500; padding: 15px 10px}
	
	.button3 {background-color: #FF6347; padding: 15px 10px}
	
	h1 {
		font-weight: normal;
		font-size: 28px;
	}
	
</style>
<body>
	<h1>Banking Management System</h1>
	<a href="addHolder"><button class="button button2">Add New Account</button></a> 
	<a href="holderList"><button class="button button3">View Accounts List</button></a>  
</body>
</html>