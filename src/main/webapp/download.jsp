<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
<title>download</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=yes">

<link rel='stylesheet prefetch'
	href='https://fonts.googleapis.com/css?family=Open+Sans'>

<link rel="stylesheet" href="css/style.css">

</head>

<body background="images/bg_new.JPG">
            <p align="center"><font size="7" color="#ff3300">Notification Download</font></p>
	<!-- <div class="cont"> -->
		<div class="demo">
			<div class="login">
			<div class="login__check"></div>
				<div class="login__form">
					
					<html:form action="/notificationdownload" focus="noti_id">
						<!-- <form action="/login" focus="login__input name"> -->
						<div class="login__row">
							<svg class="login__icon name svg-icon" viewBox="0 0 20 20">
							<path
								d="M0,20 a10,8 0 0,1 20,0z M10,0 a4,4 0 0,1 0,8 a4,4 0 0,1 0,-8" />
							</svg>
							<div class="login__input name">
								<h4>Notification Id :</h4> <html:text property="noti_id" />
							</div>
							<!-- <input type="text" class="login__input name" placeholder="Username" property="userName" /> -->
						</div>			

						<button type="submit" class="login__submit" value="notificationdownload">DOWNLOAD
						</button>
				</div>
				</html:form>
			</div>
		</div>
	<!-- </div> -->
</body>
</html>