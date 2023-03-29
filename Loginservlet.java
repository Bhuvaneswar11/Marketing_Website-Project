package com.ism;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/Loginservlet")
public class Loginservlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
		if (email == null || email.equals("")) {
			request.setAttribute("status", "invalid email");
			dispatcher = request.getRequestDispatcher("Home.jsp");
			dispatcher.forward(request, response);
		}
		if (password == null || password.equals("")) {
			request.setAttribute("status", "invalid password");
			dispatcher = request.getRequestDispatcher("Home.jsp");
			dispatcher.forward(request, response);
		}
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ism", "root", "Bhuvan11");
			/*
			 * Statement st = conn.createStatement(); ResultSet rs =
			 * st.executeQuery("select * from registration where username='" + username +
			 * "' and password='" + password + "'"); if(rs.next()) {
			 * response.sendRedirect("success.jsp"); } else {
			 * response.sendRedirect("failure.jsp"); }
			 */
			PreparedStatement pst = conn.prepareStatement("select * from registration where email=? and password=?");
			pst.setString(1, email);
			pst.setString(2, password);

			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				session.setAttribute("email", rs.getString("email"));
				dispatcher = request.getRequestDispatcher("Home.jsp");
			} else {
				request.setAttribute("status", "failed");
				dispatcher = request.getRequestDispatcher("login.jsp");
			}
			dispatcher.forward(request, response);

		}

		catch (Exception e) {

		}
	}
}
