<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<body>

<%
String driver = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "ism";
String userid = "root";
String password = "Bhuvan11";
String name=request.getParameter("name");
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h1>Search Data</h1>
<table border="1">
<tr>
<td>Cid</td>
<td>Cname</td>
<td>Crs</td>

</tr>

<%

try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
int count=0;
String sql ="select * from categories where cname='"+name+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("cid") %></td>
<td><%=resultSet.getString("cname") %></td>
<td><%=resultSet.getString("crs") %></td>
</tr>
<%
}
} catch (Exception e) 
{
e.printStackTrace();
}
%>
</table>
</body>

</html>
