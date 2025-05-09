package com.learn;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/sq")
public class SqServlet extends HttpServlet
{
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
//		int k = (int) getAttribute("k");

//		int k = Integer.parseInt(req.getParameter("k"));
		
//		HttpSession session = req.getSession();
//		session.removeAttribute("k");
		
//		int k = (int) session.getAttribute("k");
		
		int k = 0;
		Cookie cookies[] = req.getCookies();
		
		for (Cookie c: cookies) {
			if(c.getName().equals("k")) {
				k = Integer.parseInt(c.getValue());
			}
		}
		
		
		k = k * k;
		PrintWriter out = res.getWriter();
		
		out.println("<html><body bgcolor='cyan'>");
		out.println("The Square is: "+ k);
		out.print("</body></html>");
		
		
//		System.out.println("This is sq!");
//		out.println("This is sq!");
	}
}
