
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Guru Login Form</title>
<style>
body {
	background:url(images/pho.jpg);
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	border: 1px solid #eee;
}

form {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	height: 100vh;
}

table {
	color: blue;
	font-family: Arial, sans-serif;
	border-collapse: collapse;
	width: 50%;
	max-width: 400px;
}

td {
	padding: 10px;
}

input[type="text"], input[type="password"] {
	font-family: sans-serif, Arial;
	border: none;
	padding: 10px;
	width: 100%;
	font-size: 16px;
	margin-bottom: 10px;
}

input[type="submit"] {
	background-color: #4CAF50;
	color: white;
	border: none;
	padding: 10px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin-top: 10px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: blue;
}

a {
	text-decoration: none;
	color: #333;
	font-size: 14px;
}

a:hover {
	color: #666;
}
</style>
</head>
<body>
	<form action="Loginservlet" method="post">
		<h2>Welcome to our Application</h2>
		<table>
			<tr>
				<td>Enter your Email</td>
				<td><input type="text" name="email"
					placeholder="Enter your email" required /></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password"
					placeholder="Enter your password" required /></td>



			</tr>


		</table>

		<a href="Home.jsp"><input type="submit" value="Login"></a> <br>
		<a href="forgetpassword.jsp">Forgot Password</a><br> <a
			href="Registration.jsp">New User!</a>
	</form>
	<br>

</body>
</html>