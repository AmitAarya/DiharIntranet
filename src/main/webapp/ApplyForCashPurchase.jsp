<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
<title>Apply For Leave</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=yes">

<link rel='stylesheet prefetch'
	href='https://fonts.googleapis.com/css?family=Open+Sans'>

<link rel="stylesheet" href="css/style.css">

</head>

<body background="images/backgroundnew.jpg">
	<p align="center">
		<font size="7" color="#ff3300">Apply For CASH PURCHASE</font>
	</p>
	<!-- <div class="cont"> -->
	<div class="demo">
		<div class="login">
			<!-- <div class="login__check"></div>-->
			<!-- <div class="login__form">-->

				<html:form action="/applyforleave" focus="userId">
					<!-- <form action="/login" focus="login__input name"> -->
					
					<div class="login__row">
						<svg class="login__icon name svg-icon" viewBox="0 0 20 20">
						<path d="M0,20 a10,8 0 0,1 20,0z M10,0 a4,4 0 0,1 0,8 a4,4 0 0,1 0,-8" />
						</svg>
						<div class="login__input name">
							<h4>Txn Type :</h4>
							<select name="txnType">
                            <option value="CASH PURCHASE">CASH PURCHASE</option>
                            
                            </select><br>
						</div>
						<!-- <input type="text" class="login__input name" placeholder="Username" property="userName" /> -->
					</div>
					
					<div class="login__row">
						<svg class="login__icon name svg-icon" viewBox="0 0 20 20">
						<path d="M0,20 a10,8 0 0,1 20,0z M10,0 a4,4 0 0,1 0,8 a4,4 0 0,1 0,-8" />
						</svg>
						<div class="login__input name">
							<h4>Sub Catagory :</h4>
							<select name="txnTypeSubCatagory">
                            <option value="GENERAL">GENERAL</option>
                            
                            
                            </select><br>
						</div>
						<!-- <input type="text" class="login__input name" placeholder="Username" property="userName" /> -->
					</div>
					
					<div class="login__row">
						<svg class="login__icon name svg-icon" viewBox="0 0 20 20">
						<path d="M0,20 a10,8 0 0,1 20,0z M10,0 a4,4 0 0,1 0,8 a4,4 0 0,1 0,-8" />
						</svg>
						<div class="login__input name">
							<h4>HOD Cadre :</h4>
							<select name="hodCadre">
                            <option value="LEAVE">DRDS</option>
                            <option value="LEAVE">DRTC</option>
                            <option value="LEAVE">ADMIN ALIED</option>
                            <option value="LEAVE">STORE</option>                           
                            
                            </select><br>
						</div>
						<!-- <input type="text" class="login__input name" placeholder="Username" property="userName" /> -->
					</div>
					
					<div class="login__row">
						<svg class="login__icon name svg-icon" viewBox="0 0 20 20">
						<path d="M0,20 a10,8 0 0,1 20,0z M10,0 a4,4 0 0,1 0,8 a4,4 0 0,1 0,-8" />
						</svg>
						<div class="login__input name">
							<h4>HOD Cadre :</h4>
							<select name="hodName">
                            <option value="LEAVE">DRDS</option>                       
                            
                            </select><br>
						</div>
						<!-- <input type="text" class="login__input name" placeholder="Username" property="userName" /> -->
					</div>
					
					
					<div class="login__row">
						<svg class="login__icon name svg-icon" viewBox="0 0 20 20">
						<path d="M0,20 a10,8 0 0,1 20,0z M10,0 a4,4 0 0,1 0,8 a4,4 0 0,1 0,-8" />
						</svg>
						<div class="login__input name">
							<h4>Choose Application File :</h4>
					<div class="file-chooser">
					<!--  <input class="file-chooser__input" type="file">-->
				<html:file property="txn_file"></html:file>
				
				   </div>
				   </div>
					
					
					
					<div class="login__row">
						<svg class="login__icon name svg-icon" viewBox="0 0 20 20">
						<path d="M0,20 a10,8 0 0,1 20,0z M10,0 a4,4 0 0,1 0,8 a4,4 0 0,1 0,-8" />
						</svg>
						<div class="login__input name">
							<h4>Remarks :</h4>
							<html:text property="remarks" />
						</div>
						<!-- <input type="text" class="login__input name" placeholder="Username" property="userName" /> -->
					</div>
					
					

                         <div class="login__row">
						<svg class="login__icon name svg-icon" viewBox="0 0 20 20">
						<path d="M0,20 a10,8 0 0,1 20,0z M10,0 a4,4 0 0,1 0,8 a4,4 0 0,1 0,-8" />
						</svg>
						<div class="login__input name">
							<button type="submit" class="login__submit" value="login">APPLY</button>
						</div>
						<!-- <input type="text" class="login__input name" placeholder="Username" property="userName" /> -->
					</div>


					
				</html:form>
			
		</div>
	</div>
	<!-- </div> -->
</body>
</html>