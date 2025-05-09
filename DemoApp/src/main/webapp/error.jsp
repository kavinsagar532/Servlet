<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
h2{
	color:red;
}
</style>
<body>
	<h2>There was an error to load the particular page!</h2>
	<%= "Error is: "+ exception.getMessage() %>
<Script>
	alert("Some kinda error is there!");
</Script>
</body>
</html> 