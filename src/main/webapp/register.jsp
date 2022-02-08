<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>REGISTER NEW USER</title>
<link rel="icon" href="https://cdn-icons-png.flaticon.com/128/2097/2097068.png" type = "image/x-icon">
<style type="text/css">
body {
	background-color: #121212;
	text-align: center;
	background: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
    background-size: 400% 400%;
    animation: gradient 15s ease infinite;
	
}

@keyframes gradient {
    0% {
        background-position: 0% 50%;
    }
    50% {
        background-position: 100% 50%;
    }
    100% {
        background-position: 0% 50%;
    }
}

img {
width:15%;
}

hr{
	border-width: medium;
	border-color: #F0F0F0;
	margin: 0px 100px 0px 100px;
}

label {
	color: #A2D5FD;
	font-size: 20px;
	
}

input {
	height: 30px;
	margin: 10px;
	border-radius: 12px;
}

button {
	width: 20%;
	height: 35px;
	background-color: black;
	border-radius: 12px;
	font-weight: bold;
	font-size: 15px;
	color: #14FFEC;
	cursor: pointer;
}

button:hover {
	background-color: #A2D5FD;
	color: black;
}

.con1{
	border:solid 1px;
	margin:60px 400px 60px 400px;
	padding:20px 0 30px 0;
	background-color: #30475E;
	opacity: 0.8;
}


</style>
</head>
<body>
<div class="con1">
	<form action="registration">
		<img  alt="noimg" src="https://cdn-icons-png.flaticon.com/128/3048/3048425.png"><br><br>
		<hr><br>
	
		<label>Registration ID</label><br> <input placeholder="Enter Reg_Id" type="text"
			name="reg_id"><br> <label>Student Name</label><br>
		<input type="text" name="name"><br> <br> <label
			for="branch">Choose Branch:</label> <select name="branch" id="branch">
			<option value="none">SELECT</option>
			<option value="CS">CS</option>
			<option value="EC">EC</option>
			<option value="CE">CE</option>
			<option value="ME">ME</option>
			<option value="EE">EE</option>
		</select><br> <br> <label>Contact Number</label><br> <input
			type="text" name="contact"><br> <label>Email ID</label><br>
		<input type="text" name="email"><br> <label>Username</label><br>
		<input type="text" name="uname"><br> <label>Password</label><br>
		<input type="text" name="pass"><br><br>
		<button type="submit">SUBMIT</button>
	</form>
</div>
</body>
</html>