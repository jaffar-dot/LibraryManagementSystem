<html>
<head>
<title>Login</title>
<link rel="icon" href="https://cdn-icons-png.flaticon.com/128/2097/2097068.png" type = "image/x-icon">
<style>
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

hr{
	border-width: medium;
	border-color: #F0F0F0;
	}

h1 {
	color: #F05454;
	text-align: center;
	font-family: "Lucida Console", "Courier New", monospace;
}

input {
	height: 50px;
	width: 80%;
	background: rgba(var(- -b3f, 250, 250, 250), 1);
	background-color: #EEEEEE;
	border-radius: 12px;
}

 ::placeholder { 
 text-align :center;
  }

button {
	width: 70%;
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


.c1 {
	text-align: center;
	border: solid 1px;
	border-radius: 5px;
	margin: 100 400 100 400;
	padding: 10 100 100 100;
	background-color: #30475E;
	
}
img{
width:25%;
}
</style>
</head>
<body>

	<div class="c1">
	<img  alt="noimg" src="https://cdn-icons-png.flaticon.com/128/3048/3048425.png">
	<hr>
		<h1>WELCOME TO LIBRARY</h1>
		<form action="login">
			<input type="text" name="u" placeholder="Enter Username" required="required"><br>
			<br> <input type="password" name="p"
				placeholder="Enter Password" required="required"><br> <br>
			<button type="submit">LOG IN</button>
			<br>

		</form>
		<a href="register.jsp">
			<button type="submit" class="btn1" id="btn">REGISTER</button>
		</a>
	</div>


</body>
</html>
