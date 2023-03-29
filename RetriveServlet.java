package com.ism;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletOutputStream;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RetriveServlet")
public class RetriveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		byte[] photo = null;
		ServletOutputStream sos = null;
		String sqlQuery = "select photo from registration";
		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "tiger");
			PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				photo = rs.getBytes(1);
			}
			sos = response.getOutputStream();
			sos.write(photo);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
