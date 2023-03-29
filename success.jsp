<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ include file="image.jsp"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%
try
{
	System.out.println("hello");
	String email=request.getParameter("email");
	//String password=request.getParameter("password");
	System.out.println(email);
	System.out.println("hi");
	byte[] img=null;
	ServletOutputStream sos=null;
	String query="select photo from registration where email=?";
	Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ism","root","Bhuvan11");
    PreparedStatement pstmt=conn.prepareStatement(query);
    pstmt.setString(1,email);
    ResultSet rs=pstmt.executeQuery();
    while(rs.next())
    {
    	img=rs.getBytes("photo");    	
    }
    sos=response.getOutputStream();
    sos.write(img);
    response.getOutputStream().flush();
    response.getOutputStream().close();
    return;
    
}
catch(Exception e)
{
}

%>

