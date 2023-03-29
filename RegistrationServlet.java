package com.ism;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet("/RegistrationServlet")
@MultipartConfig(maxFileSize = 16177215)
public class RegistrationServlet extends HttpServlet {
	public void init(ServletConfig config) throws ServletException {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String fn = request.getParameter("firstName");
		String ln = request.getParameter("lastName");
		String email = request.getParameter("email");
		String un = request.getParameter("userName");
		String pa = request.getParameter("password");

		String mn = request.getParameter("mobileno");
		String ad = request.getParameter("address");
		String photo = request.getParameter("photo");

		out.println(photo);
		out.println("one");
		File file = new File(photo);
		FileInputStream fis = new FileInputStream(file);

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ism", "root", "Bhuvan11");
			PreparedStatement pstmt = conn.prepareStatement(
					"insert into registration(firstname,lastname,email,username,password,mobileno,address,photo) values(?,?,?,?,?,?,?,?)");
			pstmt.setString(1, fn);
			pstmt.setString(2, ln);
			pstmt.setString(3, email);
			pstmt.setString(4, un);
			pstmt.setString(5, pa);

			pstmt.setString(6, mn);
			pstmt.setString(7, ad);
			pstmt.setBinaryStream(8, fis);
			// if (inputStream != null) {
			// fetches input stream of the upload file for the blob column
			// pstmt.setBlob(7, inputStream);
			// }
			int count = pstmt.executeUpdate();
			/*
			 * PreparedStatement pstmt1=conn.
			 * prepareStatement("insert into login(username,password,cpassword) values(?,?,?)"
			 * ); pstmt1.setString(1,un); pstmt1.setString(2, pa); pstmt1.setString(3, pa);
			 * int i=pstmt1.executeUpdate(); if(count>0) {
			 * out.println("one record inserted into table :"+i); } else {
			 * out.println("record insertion failed"); }
			 */
		} catch (Exception e) {
			out.println(e);

		}
	}

	public void destroy() {

	}

}