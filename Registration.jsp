<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
	background: url(images/absto.webp);
	border: 1px solid #eee;
}

label {
	display: inline-block;
	width: 150px;
	text-align: right;
	margin-right: 20px;
}

input[type="text"], input[type="password"], input [type="text"], input[type="file"]
	{
	width: 250px;
	font-size: bold;
	padding: 5px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type="submit"] {
	background-color: #4CAF50;
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #45a049;
}
</style>
</head>
<body>
	<center>
		<form method="get" action="RegistrationServlet">
			<h2>Registration Form</h2>
			<div>
				<label>First Name:</label> <input type="text" name="firstName"
					placeholder="enter your firstname" required="" />
			</div>
			<br> <br>
			<div>
				<label>Last Name:</label> <input type="text" name="lastName"
					placeholder="enter your lastname" required="" />
			</div>
			<br> <br>
			<div>
				<label>Email:</label> <input type="text" name="email"
					placeholder="enter your email" required="" />
			</div>
			<br> <br>
			<div>
				<label>UserName:</label> <input type="text" name="userName"
					placeholder="enter username" required="" />
			</div>
			<br> <br>
			<div>
				<label>Password:</label> <input type="password" name="password"
					placeholder="enter your password" required="" />
			</div>
			<br> <br>
			<div>
				<label>Confirm Password:</label> <input type="password"
					name="cpassword" placeholder="repeat  your password" required="" />
			</div>
			<br> <br>
			<div>
				<label>Mobile No:</label> <input type="text" name="mobileno"
					placeholder="enter your mobile number" required="" />
			</div>
			<br> <br>
			<div>
				<label>Address:</label> <input type="text" name="address"
					placeholder="enter your address" required="" />
			</div>
			<br> <br>
			<div>
				<label>Profile Photo:</label> <input type="file" name="photo"
					placeholder="enter your profile image" required="" />
			</div>
			<br> <br> <a href="login.jsp"><input type="submit"
				value="Save"></a><br> <br> 
			<a href="login.jsp">Already a Member</a>
		</form>
	</center>
</body>
</html>