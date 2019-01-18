<%@page import="javax.swing.text.Document"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
<title>Apply For Leave</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=yes">

<link rel='stylesheet prefetch'
	href='https://fonts.googleapis.com/css?fam ily=Open+Sans'>

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="upload/FileUpload.css">



<script type="text/javascript">

function setHodName(c1, c2) {
		var s1 = document.getElementById(c1);
		var s2 = document.getElementById(c2);
		s2.innerHTML = "";
		if (s1.value == "LEAVE") {
			var optionArray = [ "CASUAL LEAVE|CASUAL LEAVE", "EARNED LEAVE|EARNED LEAVE",
					"HALF PAY LEAVE|HALF PAY LEAVE","COMMUTED LEAVE|COMMUTED LEAVE","MATERNITY LEAVE|MATERNITY LEAVE","PATERNITY LEAVE|PATERNITY LEAVE","STUDY LEAVE|STUDY LEAVE" ];
		}
		else if (s1.value == "TD") {
			var optionArray = [ "GENERAL|GENERAL"];
		}
		else if (s1.value == "CASH PURCHASE") {
			var optionArray = [ "GENERAL|GENERAL" ];
		}
		else if (s1.value == "GENERAL APPLICATION") {
			var optionArray = [ "GENERAL|GENERAL"];
		}
		for ( var option in optionArray) {
			var pair = optionArray[option].split("|");
			var newoption = document.createElement("option");
			newoption.value = pair[0];
			newoption.innerHTML = pair[1];
			s2.options.add(newoption);
		}

	}

function setHodNameNew(c1, c2) {
	var s1 = document.getElementById(c1);
	var s2 = document.getElementById(c2);
	s2.innerHTML = "";
	if (s1.value == "DRDS") {
		var optionArray = [ "O P Chaurasia|Dr. OP Chaurasia", "Dr. Narendra Singh|Dr. Narendra Singh",
				"T Stobdan|Dr. Tsering Stobdan","Dr. Dorjey Angchok|Dr. Dorjey Andchok"];
	}
	else if (s1.value == "DRTC") {
		var optionArray = [ "Eli Paljor|Eli Paljor"];
	}
	else if (s1.value == "ADMIN") {
		var optionArray = [ "Abhishek Anand|Abhishek Anand","Tsering Mourup|Tsering Mourup" ];
	}
	
	for ( var option in optionArray) {
		var pair = optionArray[option].split("|");
		var newoption = document.createElement("option");
		newoption.value = pair[0];
		newoption.innerHTML = pair[1];
		s2.options.add(newoption);
	}

}


</script>
</head>

<body background="images/backgroundnew.jpg">
<h2><a href="http://192.168.0.79:8085/DiharIntranet/diharhome.jsp">Log Out</a></h2>
	<p align="center">
		<font size="7" color="#ff3300">Apply For LEAVE/TD/CASH PURCHASE</font>
	</p>


	<jsp:useBean id="st" class="com.dihar.common.txn.form.TxnForm">


		<%--
Put the values entered into the form into the bean class
--%>

		<jsp:setProperty name="st" property="*" />


		<%--
Get all the values that are put in the object 'st' with the
given property names
--%>

		<jsp:getProperty property="txnType" name="st" />

	</jsp:useBean>

	<!-- <div class="cont"> -->
	<div class="demo">
		<div class="login">
			<!-- <div class="login__check"></div>-->
			<!-- <div class="login__form">-->

			<html:form action="/applyforleave" focus="txnType"
				enctype="multipart/form-data">
				<!-- <form action="/login" focus="login__input name"> -->


				<div class="login__row">
					<svg class="login__icon name svg-icon" viewBox="0 0 20 20"> <path
						d="M0,20 a10,8 0 0,1 20,0z M10,0 a4,4 0 0,1 0,8 a4,4 0 0,1 0,-8" />
					</svg>
					<div class="login__input name">
						<h4>Your ID :</h4>
						<input type="text" name="applicantId" value="<%=request.getParameter("empId")%>"
							readonly />

					</div>
					<!-- <input type="text" class="login__input name" placeholder="Username" property="userName" /> -->
				</div>



				<div class="login__row">
					<svg class="login__icon name svg-icon" viewBox="0 0 20 20"> <path
						d="M0,20 a10,8 0 0,1 20,0z M10,0 a4,4 0 0,1 0,8 a4,4 0 0,1 0,-8" />
					</svg>
					<div class="login__input name">
						<h4>Txn Type :</h4>
						<select id="txnType" name="txnType" onchange="setHodName(this.id ,'txnTypeSubCatagory')";>
							<option value="LEAVE">LEAVE</option>
							<option value="TD">TD</option>
							<option value="CASH PURCHASE">CASH PURCHASE</option>
							<option value="GENERAL APPLICATION">GENERAL APPLICATION</option>

						</select>
						<br>
					</div>
					<!-- <input type="text" class="login__input name" placeholder="Username" property="userName" /> -->
				</div>



				<div class="login__row">
					<svg class="login__icon name svg-icon" viewBox="0 0 20 20"> <path
						d="M0,20 a10,8 0 0,1 20,0z M10,0 a4,4 0 0,1 0,8 a4,4 0 0,1 0,-8" />
					</svg>
					<div class="login__input name">
						<h4>Sub Catagory :</h4>
						<select id="txnTypeSubCatagory" name="txnTypeSubCatagory">
						
						</select>
						<br>
					</div>
					<!-- <input type="text" class="login__input name" placeholder="Username" property="userName" /> -->
				</div>

				<div class="login__row">
					<svg class="login__icon name svg-icon" viewBox="0 0 20 20"> <path
						d="M0,20 a10,8 0 0,1 20,0z M10,0 a4,4 0 0,1 0,8 a4,4 0 0,1 0,-8" />
					</svg>
					<div class="login__input name">
						<h4>HOD Cadre :</h4>
						<select id="hodCadre" name="hodCadre" onchange="setHodNameNew(this.id, 'hodName')">
							<option value=""></option>
							<option value="DRDS">DRDS</option>
							<option value="DRTC">DRTC</option>
							<option value="ADMIN">ADMIN ALLIED</option>

						</select>
						<br>
					</div>
					<!-- <input type="text" class="login__input name" placeholder="Username" property="userName" /> -->
				</div>

				<div class="login__row">
					<svg class="login__icon name svg-icon" viewBox="0 0 20 20"> <path
						d="M0,20 a10,8 0 0,1 20,0z M10,0 a4,4 0 0,1 0,8 a4,4 0 0,1 0,-8" />
					</svg>
					<div class="login__input name">
						<h4>HOD Name :</h4>

						<select id="hodName" name="hodName">
						
						</select>

					</div>
					<!-- <input type="text" class="login__input name" placeholder="Username" property="userName" /> -->
				</div>

				<div class="login__row">
					<svg class="login__icon name svg-icon" viewBox="0 0 20 20"> <path
						d="M0,20 a10,8 0 0,1 20,0z M10,0 a4,4 0 0,1 0,8 a4,4 0 0,1 0,-8" />
					</svg>
					<div class="login__input name">
						<h4>Choose Application File :</h4>
						<div class="file-chooser">
							<!--  <input class="file-chooser__input" type="file">-->
							<html:file property="txnFile"></html:file>

						</div>
					</div>
				</div>



				<div class="login__row">
					<svg class="login__icon name svg-icon" viewBox="0 0 20 20"> <path
						d="M0,20 a10,8 0 0,1 20,0z M10,0 a4,4 0 0,1 0,8 a4,4 0 0,1 0,-8" />
					</svg>
					<div class="login__input name">
						<h4>Remarks :</h4>
						<html:text property="remarks" />
					</div>
					<!-- <input type="text" class="login__input name" placeholder="Username" property="userName" /> -->
				</div>



				<div class="login__row">
					<svg class="login__icon name svg-icon" viewBox="0 0 20 20"> <path
						d="M0,20 a10,8 0 0,1 20,0z M10,0 a4,4 0 0,1 0,8 a4,4 0 0,1 0,-8" />
					</svg>
					<div class="login__input name">
						<button type="submit" class="login__submit" value="submit">APPLY</button>
					</div>
					<!-- <input type="text" class="login__input name" placeholder="Username" property="userName" /> -->
				</div>
			</html:form>

		</div>
	</div>
	<!-- </div> -->
</body>
</html>