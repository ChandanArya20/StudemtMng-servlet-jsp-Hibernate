<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Edit data</title>
	<style>
		body{
			padding: 0px;
			margin: 0px;
			background-color: white;
		}
		.user_input{
		display: flex;
		justify-content: center;
		font-weight: bold;
		margin-top: 20px;
		}
		.input_heading{
			text-align: center ; 
			color: blue; 
			font-weight: bold;
			padding-bottom: 10px;
			margin-top: -10px;
		}
		form{
			background-color: white;
			padding: 18px;
			padding-left: 30px;
			padding-right: 30px;
			padding-bottom: 15px;
			border-radius: 5px;
			box-shadow: 0px 0px 20px  rgba(0, 0, 0, 0.5);

		}
		form div{
			padding-bottom: 10px;
		}
		form div input{
		padding: 3px;
		padding-left: 30px;
		padding-right:30px;
		}
		form div input:focus{   
			outline: 1px solid rgb(0, 60, 255);
		
		}
		#id input:focus{
			outline: none;
		}
		.sub-btn-container{
			margin-top: 10px;
			display: flex;
			flex-direction: column;
			padding-bottom: 0px;
		}
		.sub-btn-container input{
			background-color: rgb(250, 112, 0);
			color: white;
			font-weight: bold;
			border:none;
			border-radius: 4px;
			padding-bottom: 7px;
			padding-top: 7px;
			transition-duration: 300ms;
		}

		.sub-btn-container input:hover{
			cursor:pointer ;
			color: rgba(255, 255, 255, 0.868);
			box-shadow: 0px 0px 15px  rgba(255, 115, 0, 0.795);;   
		}
	</style>
</head>
<body>
	<c:choose>
		<c:when test="${student ne null }">
			<div class="user_input">
				<form method='post' action='<%=response.encodeURL("controller/updateform") %>'>
					<div class="input_heading">Edit Your details</div>
					<div id="id">
						Id<br/>
						<input type='number' name='sid' min='1' value='${student.getSid() }' disabled>
					</div>
					<div>
						Name<br/>
						<input type='text' name='sname' value='${student.getSname() }'>
					</div>
					<div>
						Age<br/>
						<td><input type='number' name='sage' min='1' value='${student.getSage() }' >
					</div>
					<div>
						Address<br/>
						<input type='text' name='saddress' value='${student.getSaddress() }' >
					</div>
				
					<div class="sub-btn-container">                 
						<input type='submit' value='Update' >
					</div>
				   
				</form>
			</div>
		</c:when>
		<c:otherwise>
			<h1 style='color:red; text-align:center;' >Data not found...</h1>		
		</c:otherwise>	
	</c:choose>	
</body>
</html>
