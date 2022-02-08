<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

html, body {
  width: 100%;
  height:100%;
}

h1{
font-family: "Lucida Console", "Courier New", monospace;
color:white;
}
button {
	width: 10%;
	height: 35px;
	background-color: white;
	border-radius: 12px;
	font-weight: bold;
	font-size: 15px;
	color: #F05454;
	cursor: pointer;
}

button:hover {
	background-color: #F05454;
	color: #F5F5F5;
}

body {
	background-color: #121212;
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
</style>
</head>
<body>
	<h1>
		Hi,
		<%=request.getAttribute("name")%></h1>
	<p>Login Successful</p>
	<br>
	<form action="index.jsp">
	<button type="submit">LOG OUT</button>
		
	</form>

</body>
</html>