<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="cyan">
	<%--

	<%@page import="java.util.Scanner" %>
	<%@include file="Header.jsp" %>
	<%!
		int coef = 3;
		String message="Welcome keerthi";
	%>
	
	<% 
		int i = Integer.parseInt(request.getParameter("num1"));
		int j = Integer.parseInt(request.getParameter("num2"));
		int k = i + j;
		
		out.print("The result is: "+k);
	%>
	
	<br>
	
	<%= message %>

	 

	 <%
	 	try{
		 	int k = 8/0;	

	 	}
	 catch(Exception e){
		 out.print("Error: "+e.getMessage());
	 }
	 
	 %>
		 --%>
	<%	 
		int k = 5/0;
	%>
	
	
</body>
</html>