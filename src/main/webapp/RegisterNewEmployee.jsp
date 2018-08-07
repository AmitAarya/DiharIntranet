<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
<title>Register</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=yes">

<link rel='stylesheet prefetch'
	href='https://fonts.googleapis.com/css?family=Open+Sans'>

<link rel="stylesheet" href="css/style.css">

</head>

<body background="images/backgroundnew.jpg">
	<p align="center">
		<font size="7" color="#ff3300">Register New EMPLOYEE</font>
	</p>
	<!-- <div class="cont"> -->
	<div class="demo">
		<div class="login">
			<!-- <div class="login__check"></div>-->
			<!-- <div class="login__form">-->

				<html:form action="/registeremployee" focus="userId">
					<!-- <form action="/login" focus="login__input name"> -->
					<div class="login__row">
						<svg class="login__icon name svg-icon" viewBox="0 0 20 20">
						<path d="M0,20 a10,8 0 0,1 20,0z M10,0 a4,4 0 0,1 0,8 a4,4 0 0,1 0,-8" />
						</svg>
						<div class="login__input name">
							<h4>Employee Id :</h4>
							<html:text property="empId" />
						</div>
						<!-- <input type="text" class="login__input name" placeholder="Username" property="userName" /> -->
					</div>
					
					<div class="login__row">
						<svg class="login__icon name svg-icon" viewBox="0 0 20 20">
						<path d="M0,20 a10,8 0 0,1 20,0z M10,0 a4,4 0 0,1 0,8 a4,4 0 0,1 0,-8" />
						</svg>
						<div class="login__input name">
							<h4>Employee Name :</h4>
							<html:text property="empName" />							
						</div>
						<!-- <input type="text" class="login__input name" placeholder="Username" property="userName" /> -->
					</div>
					
					<div class="login__row">
						<svg class="login__icon name svg-icon" viewBox="0 0 20 20">
						<path d="M0,20 a10,8 0 0,1 20,0z M10,0 a4,4 0 0,1 0,8 a4,4 0 0,1 0,-8" />
						</svg>
						<div class="login__input name">
							<h4>Gender :</h4>
							<select name="empGender">
                            <option value="MALE">MALE</option>
                            <option value="FEMALE">FEMALE</option>

                            </select><br>
						</div>
						<!-- <input type="text" class="login__input name" placeholder="Username" property="userName" /> -->
					</div>
					
					<div class="login__row">
						<svg class="login__icon name svg-icon" viewBox="0 0 20 20">
						<path d="M0,20 a10,8 0 0,1 20,0z M10,0 a4,4 0 0,1 0,8 a4,4 0 0,1 0,-8" />
						</svg>
						<div class="login__input name">
							<h4>Cadre :</h4>
							<select name="empCadre">							
                            <option value="DRDS">DRDS</option>
                            <option value="DRTC">DRTC</option>
                            <option value="ADMIN ALLIED">ADMIN ALLIED</option>                    
                            </select><br>
						</div>
						<!-- <input type="text" class="login__input name" placeholder="Username" property="userName" /> -->
					</div>
					
					<div class="login__row">
						<svg class="login__icon name svg-icon" viewBox="0 0 20 20">
						<path d="M0,20 a10,8 0 0,1 20,0z M10,0 a4,4 0 0,1 0,8 a4,4 0 0,1 0,-8" />
						</svg>
						<div class="login__input name">
							<h4>Designation :</h4>
							<html:text property="empDesignation" />
						</div>
						<!-- <input type="text" class="login__input name" placeholder="Username" property="userName" /> -->
					</div>
					
					<div class="login__row">
						<svg class="login__icon name svg-icon" viewBox="0 0 20 20">
						<path d="M0,20 a10,8 0 0,1 20,0z M10,0 a4,4 0 0,1 0,8 a4,4 0 0,1 0,-8" />
						</svg>
						<div class="login__input name">
							<h4>Division :</h4>
							<html:text property="empDivision" />
						</div>
						<!-- <input type="text" class="login__input name" placeholder="Username" property="userName" /> -->
					</div>


                       <div class="login__row">
						<svg class="login__icon name svg-icon" viewBox="0 0 20 20">
						<path d="M0,20 a10,8 0 0,1 20,0z M10,0 a4,4 0 0,1 0,8 a4,4 0 0,1 0,-8" />
						</svg>
						<div class="login__input name">
							<h4>Remarks :</h4>
							<select name="empRemarks">			
                            <option value="GENERAL">GENERAL</option>
                            <option value="HEAD ADMIN">HEAD ADMIN</option>
                            <option value="DSA">DSA</option>
                            <option value="DIRECTOR">DIRECTOR</option>                    
                            </select><br>
						</div>
						<!-- <input type="text" class="login__input name" placeholder="Username" property="userName" /> -->
					</div>

                         <div class="login__row">
						<svg class="login__icon name svg-icon" viewBox="0 0 20 20">
						<path d="M0,20 a10,8 0 0,1 20,0z M10,0 a4,4 0 0,1 0,8 a4,4 0 0,1 0,-8" />
						</svg>
						<div class="login__input name">
							<button type="submit" class="login__submit" value="login">Register</button>
						</div>
						<!-- <input type="text" class="login__input name" placeholder="Username" property="userName" /> -->
					</div>
		
				</html:form>
			
		</div>
	</div>
	<!-- </div> -->
</body>
</html>