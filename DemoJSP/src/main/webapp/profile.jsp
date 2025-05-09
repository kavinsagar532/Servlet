<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@page errorPage="errors.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>The value from the database are: </h2>
	<br>
	
	<%
		int id = Integer.parseInt(request.getParameter("id"));
		String url = "jdbc:mysql://localhost:3306/demo";
		String username = "root";
		String password = "admin";
		String sql = "select * from users where id = "+id;
		Class.forName("com.mysql.jdbc.Driver");	
		Connection con = DriverManager.getConnection(url,username,password);
		Statement st = con.createStatement();
		
		ResultSet rs = st.executeQuery(sql);
		rs.next();
	
	%>
	Id:  <%= rs.getString(1) %> <br>
	Name: <%= rs.getString(2) %> <br>
	Email:  <%= rs.getString(3) %> <br>
	Country:  <%= rs.getString(4) %> <br>
	
</body>
</html>