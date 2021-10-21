<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<style>

	body {
		font-family: monospace;
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
	
	h1 {
		text-align: center;
		font-size: 18px;
	}
	
	table {
		margin-top: 30px;
		margin-left: auto;
		margin-right: auto;
		border: 1px solid #ddd;
		padding: 15px;
	}
	
	tr {
		height: 50px;
	}
</style>

<body>
	<div class="heading">
		Bank Management App
	</div>
	
	<div class="navBar">
	   <a href="index"><button class="button button2">Home</button></a>
		<h1>Add New Account</h1>
	   <a href="holderList"><button class="button button2">Accounts List</button></a>
	</div> 
	
	<form action="save" method="post">
	<table>
		<tr>
		<td>Enter Name:</td>
		<td><input type="text" name="name"></td>
		</tr>
		
		<tr>
		<td>Enter Gender:</td>
		<td><input type="text" name="gender"></td>
		</tr>
		
		<tr>
		<td>Enter Age:</td>
		<td><input type="text" name="age"></td>
		</tr>
		
		<tr>
		<td>Enter Civil Status :</td>
		<td><input type="text" name="status"></td>
		</tr>
		
		<tr>
		<td>Enter Branch:</td>
		<td><input type="text" name="branch"></td>
		</tr>
		
		<tr style="text-align: center;">
		<td colspan="2"><button type="submit">Create Account</button></td>
		</tr>
	</table>
	
	</form>
</body>
</html>