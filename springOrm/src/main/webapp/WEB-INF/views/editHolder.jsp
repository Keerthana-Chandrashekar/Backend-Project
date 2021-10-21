<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
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
	input {
		font-family: monospace;
		font-size: 12px;
	}
</style>
<body>
	<div class="heading">
		Banking Management App
	</div>
	
	<div class="navBar">
	   <h1></h1>
		<h1>Update Account Details</h1>
	   <h1></h1>
	</div> 
	
	<form:form method="POST" action="/springOrm/editsave">    
        <table class="center">  
          
         <tr>    
         <td><form:hidden  path="id" /></td>  
         </tr>   
         
         <tr>
          <td>Name : </td>   
          <td><form:input path="name"  /></td>  
         </tr>
             
         <tr>    
          <td>Gender :</td>    
          <td><form:input path="gender" /></td>  
         </tr> 
             
         <tr>    
          <td>Age :</td>    
          <td><form:input path="age" /></td>  
         </tr> 
             
         <tr>    
          <td>Civil Status :</td>    
          <td><form:input path="status" /></td>  
         </tr> 
             
         <tr>    
          <td>Branch :</td>    
          <td><form:input path="branch" /></td>  
         </tr> 
           
         <tr style="text-align: center;">    
          <td colspan="2"><button type="submit" value="Edit Save">Update</button></td>    
         </tr>    
        </table>    
       </form:form>
</body>
</html>