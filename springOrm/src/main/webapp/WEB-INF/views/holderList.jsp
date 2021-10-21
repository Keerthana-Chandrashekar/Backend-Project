<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page isELIgnored="false" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee List</title>
</head>
<style>
	body {
		font-family: monospace;
	}
	
	th {
		color: black;
		font-size: 16px;
		text-align: left;
    	padding-left: 20px;
    	border: none;
    	border-right: 1px solid #ddd;
    	border-bottom: 1px solid #ddd;
    	background-color: lightgray;
	}
	
	tr {
		height: 40px;
	}
	
	td {
		padding-left: 20px;
    	border: none;
    	border-right: 1px solid #ddd;
    	border-bottom: 1px solid #ddd;
	}
	
	.heading {
		height: 80px;
		background: orange;
		color: white;
		display: flex;
		align-items: center;
		justify-content: center;
		font-size: 28px;
		font-family: monospace;
    	margin-bottom: 40px;
	}
	
	table {
		margin-top: 30px;
		margin-left: auto;
		margin-right: auto;
		border-top: 1px solid #ddd;
		border-left: 1px solid #ddd;
		border-right: none;
		border-bottom: none;
		min-width: 1300px;
	}
	
	h1 {
		text-align: center;
		font-size: 18px;
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
	}
	
	.button2 {background-color: #008CBA; padding: 15px 10px}
	
	.button3 {background-color: #f44336;}
	
	.navBar {
		display: flex;
    	align-items: center;
    	justify-content: space-between;
	}
	
</style>
<body>
	<div class="heading">
		Banking Management App
	</div>
	
	<div class="navBar">
	   <a href="index"><button class="button button2">Home</button></a>
		<h1>List of all Account Holders</h1>
	   <a href="addHolder"><button class="button button2">Add New Account</button></a>
	</div>  
	<table border="2" width="70%" cellpadding="2">  
		<tr>
			<th>Account No</th>
			<th>Name</th>
			<th>Gender</th>
			<th>Age</th>
			<th>Civil Status</th>
			<th>Branch</th>
			<th style="text-align: center;" colspan="2">Actions</th>
		</tr>  
	   <c:forEach var="a" items="${list}">  
	    
	   <tr>  
		   <td>accHDFC${a.id}</td>  
		   <td>${a.name}</td>   
		   <td>${a.gender}</td>  
		   <td>${a.age}</td>
		   <td>${a.status}</td>
		   <td>${a.branch}</td>
		   <td style="text-align: center;" ><a href="editHolder/${a.id}"><button>Edit</button></a></td>  
		   <td style="text-align: center;" ><a href="deleteholder/${a.id}" onclick="return confirm('Are your sure you want to delete this account ?')"><button class="button button3">Delete</button></a></td>  
	   </tr>  
	   </c:forEach>  
   </table>  
   <br/>  
</body>
</html>