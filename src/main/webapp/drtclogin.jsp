<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
<title>Login</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=yes">

<link rel='stylesheet prefetch'
	href='https://fonts.googleapis.com/css?family=Open+Sans'>

<link rel="stylesheet" href="css/style.css">

</head>

<body background="images/backgroung2.jpg">
	<!-- <div class="cont"> -->
		<div class="demo">
			<div class="login">
			<div class="login__check"></div>
				<div class="login__form">
					<html:form action="/directorlogin" focus="userName">
						<!-- <form action="/login" focus="login__input name"> -->
						<div class="login__row">
							<svg class="login__icon name svg-icon" viewBox="0 0 20 20">
							<path
								d="M0,20 a10,8 0 0,1 20,0z M10,0 a4,4 0 0,1 0,8 a4,4 0 0,1 0,-8" />
							</svg>
							<div class="login__input name">
								<h4>UserName :</h4> <html:text property="userName" />
							</div>
							<!-- <input type="text" class="login__input name" placeholder="Username" property="userName" /> -->
						</div>
						<div class="login__row">
							<svg class="login__icon pass svg-icon" viewBox="0 0 20 20">
							<path
								d="M0,20 20,20 20,8 0,8z M10,13 10,16z M4,8 a6,8 0 0,1 12,0" />
							</svg>
							<div class="login__input pass">
								<h4>Password :</h4><html:password property="password" />
							</div>

							<!-- <input type="password" class="login__input pass" placeholder="Password" property="password" /> -->
						</div>

						<button type="submit" class="login__submit" value="login">Sign
							in</button>
						<p class="login__signup">
							Don't have an account? &nbsp;<a>Sign up</a>
						</p>
				</div>
				</html:form>
			</div>
		</div>
	<!-- </div> -->
</body>
</html>