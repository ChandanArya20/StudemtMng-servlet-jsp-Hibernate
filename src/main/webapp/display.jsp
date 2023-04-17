<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   

<!DOCTYPE html>
<html>
	<head>
		<title>your data</title>
		<!-- <link rel="stylesheet" href="CSS/display.css"> -->
		<style>
			body{
					background-color: #ffffff;
				}
				.table-heading-container{
					display: flex;
					justify-content: center;
				}
				.table-heading{
				color:rgb(0, 0, 0); 
				text-align:center;
				background-color: rgba(255, 179, 28, 0.993);
				display: inline;
				padding: 6px;
				border-radius: 5px;
				font-size: 23px;
				}   
				table{
					box-shadow: 0px 0px 20px  rgba(0, 0, 0, 0.5);
				}
				th,td,tr{
					
					margin-top: 100px;
					padding-left: 15px;
					padding-right: 15px;
					padding-top: 5px;
					padding-bottom: 5px;
				}
				td,th,table{			
					border:1px solid black;
					border-collapse:collapse;
					margin:0 auto;						
				}
		</style>
	</head>
	<body>
		<c:choose>
			<c:when test="${student ne null }">
				<div class="table-heading-container">
					<h1 class='table-heading'>Student Record</h1>
				</div>
				<table>
					<tr>
						<th>Id</th>
						<td>${student.getSid() }</td>
					</tr>
					<tr>
						<th>Name</th>
						<td>${student.getSname() }</td>
					</tr>
					<tr>
						<th>Age</th>
						<td>${student.getSage() }</td>
					</tr>
					<tr>
						<th>Address</th>
						<td>${student.getSaddress() }</td>
					</tr>
				
				</table>
			
			</c:when>
			<c:otherwise>
				<h1 style="color:red; text-align:center;">Record not found to display</h1>
			</c:otherwise>
		
		</c:choose>
	
	</body>
</html>