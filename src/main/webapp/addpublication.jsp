<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>publication</title>
<link type="text/css" rel="stylesheet" href="./What&#39;s New _ UPSC_files/css_lQaZfjVpwP_oGNqdtWCSpJT1EMqXdMiU84ekLLxQnc4.css" media="all">
<link type="text/css" rel="stylesheet" href="./What&#39;s New _ UPSC_files/css_u9Cn6xFPfn6NvRqMGUV6k10stVTR4AGT7eontS75hX4.css" media="all">
<link type="text/css" rel="stylesheet" href="./What&#39;s New _ UPSC_files/css_nFHqLp9HxaWMsvdlBR5CpwK2XX2f_EGKFy2b6e0SyTM.css" media="all">
<link type="text/css" rel="stylesheet" href="./What&#39;s New _ UPSC_files/css_49Nr0L-8U2YhzAR48BXi9k6JeDFzcAY3eFcaubcWPbY.css" media="all">
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function ctck()
{
var sds = document.getElementById("dum");

}
</script>

</head>

<body >
  

<div id="header">
	<h1>DIHAR - PUBLICATION<span class="style1"></span></h1>
    <h2>ExtraOrdinary Service</h2>	

</div>

<div id="navigation">
    <ul>
    <li><a href="create.html">Add Publication</a></li>
    <li><a href="balance1.jsp">Add Annual Report</a></li>
    <li><a href="deposit1.jsp">Add Sindhu Darshan</a></li>
    <li><a href="withdraw1.jsp">Add Events</a></li>
    <li><a href="about.jsp">ABOUT US</a></li>
    </ul>
</div>



<section class="wrapper body-wrapper ">
   
        <div class="container body-container inner-body fontSize" style="font-size: 100%;">
        	
          
                	<div class="col-xs-12 col-sm-3 col-md-3 sidebar-container fontSize" style="font-size: 100%;">
                                     </div>
				
				
				
                <div class="col-xs-12 col-sm-9 col-md-9 content-container fontSize" style="font-size: 100%;">			
							
				<div class="inner-right">                              
			<div class="header">
		<div class="login">

			<html:form action="/addpublication" focus="p_heading"
				enctype="multipart/form-data">
				<!--  <form method="post" class="file-uploader" action="/fileupload"
				enctype="multipart/form-data">-->
				<div class="file-uploader__message-area">
					<p>
					<h1>UPLOAD PUBLICATION</h1>
					</p>
				</div>

				<h4>Publication Heading :</h4><html:text property="p_heading" />
				
				<h4> Publication Year:</h4><html:text property="p_year" />
				<h4> Publication Author:</h4><html:text property="p_author" />
				
				<div class="file-chooser">
					<!--  <input class="file-chooser__input" type="file">-->
					<html:file property="p_file"></html:file>

				</div>
				<input class="login__submit" type="submit" value="upload">

			</html:form>
		</div>
	</div>


				</div>

    </div>

	
</section>





















</body>
</html>