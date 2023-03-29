/*package com.ism;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


 @WebServlet("/forgot")
public class ForgotServlet extends HttpServlet 
{
	 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
		{
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			String un=request.getParameter("username");
			out.println(un);
			String pa=request.getParameter("password");
			out.println(pa);
			String cpa=request.getParameter("cpassword");
			out.println(cpa);
			try
			{
				Class.forName("com.mysql.cj.jdbc.Driver");
			    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ism","root","Bhuvan11");
				out.println("one");
		        out.println("two");
		        PreparedStatement pstmt=conn.prepareStatement("update registration set password=?,cpassword=? where username=?");
		        out.println("three");
		        pstmt.setString(1, pa);
		        pstmt.setString(2, pa);
		        pstmt.setString(3, un);
		       int count=pstmt.executeUpdate();
		       out.println(count);
		       if(count>0)
		       {
		    	   out.println("one record updated successfully");
		       }
		        
		       else
		       {
		    	   out.println("record updation failed");
		       }
			}
			catch(Exception e)
			{
				
			}
		}
}*/