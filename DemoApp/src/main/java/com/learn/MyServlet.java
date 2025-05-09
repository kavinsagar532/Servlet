package com.learn;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet
{
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException , IOException
	{
		PrintWriter out = res.getWriter();
		out.println("hello ");
		
		ServletConfig cg = getServletConfig();
		String str = cg.getInitParameter("name");
		out.println(str);
		
		ServletContext ctx = getServletContext();
		String str1 = ctx.getInitParameter("phone");
		
		out.println(str1);

	}
}
