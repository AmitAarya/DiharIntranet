<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta charset="ISO-8859-1">
<title>File Upload</title>
<link rel="stylesheet" href="upload/FileUpload.css">

</head>
<body background="images/backgroung2.jpg">
	<p align="center">
		<font size="6" color="blue">WELCOME </font>
	</p>
	<a href="http://192.168.0.79:8085/DiharIntranet/diharhome.jsp"><font color="green"> </font><b>>>HOME</b></a>
	<div class="demo">
		<div class="login">

			<html:form action="/fileupload" focus="noti_heading"
				enctype="multipart/form-data">
				<!--  <form method="post" class="file-uploader" action="/fileupload"
				enctype="multipart/form-data">-->
				<div class="file-uploader__message-area">
					<p>

						<h1>Select a file to upload</h1>
					</p>
				</div>
							
				<h4>HEADING :</h4> <html:text property="noti_heading" /> 
				<h4>TYPE :</h4> <html:select property="noti_type">
				<option value="common">COMMON</option>
				<option value="admin">ADMIN</option>
				<option value="drds">DRDS</option>
				<option value="drtc">DRTC</option>
				<option value="director">DIRECTOR</option>
				</html:select>	
				<div class="file-chooser">
					<!--  <input class="file-chooser__input" type="file">-->
				<html:file property="noti_file"></html:file>
				
				</div>
				<input class="login__submit" type="submit" value="upload">

			</html:form>
		</div>
	</div>

	
	<div class="whatsnewdemo">
	<div class="whats-new fontSize" style="font-size: 100%;">
	
	        
	   <h2 class="whats-heading">
				<font color="red">What’s New     </font> </h2>
     
	
	 
     <div class="pull-right">
        <div class="marts-marq">
          <span><a class="btn btn-default"
						onclick="document.getElementById(&#39;mymarquee&#39;).stop();"><i
							class="glyphicon glyphicon-stop"></i></a></span>
            <span><a class="btn btn-default"
						onclick="document.getElementById(&#39;mymarquee&#39;).start();"><i
							class="glyphicon glyphicon-play"></i></a></span>

        </div>
	</div>

     
<div class="clearfix"></div>
<div class="whats-new-marq">
<marquee behavior="scroll" direction="UP" id="mymarquee"
					scrolldelay="140">


<!-- THEME DEBUG -->
					<!-- CALL: theme('views_view') -->
						<!-- BEGIN OUTPUT from 'sites/all/modules/contributed/views/theme/views-view.tpl.php' -->

					<div
						class="view view-what-new view-id-what_new view-display-id-block view-what-new view-dom-id-e6c4c4a6204048336f0fe1aa2cc7a0e3">
            <div class="view-header">
      <ul class="test arrows" style="margin-left: 10px;">
								
<!--li><a href="sites/default/files/wr_ifsp_2017.pdf">Result: Indian Forest Service (Prelim.) Examination 2017 through CS(P) Examination 2017</a></li-->
							</ul>    </div>
  
  
  
      <div class="view-content">
      

<sql:setDataSource var="dihardb" driver="oracle.jdbc.OracleDriver"
								url="jdbc:oracle:thin:@localhost:1521:XE" user="dihar"
								password="@dihar" />

					<sql:query dataSource="${dihardb}" var="notificationdata">
        select noti_id, noti_heading, noti_type from notification_master order by noti_id desc
    </sql:query>

					<div align="center">
						<table border="1" cellpadding="5">

							<!--  <tr>
								<th>ID</th>
								<th>HEADING</th>
								<th>TYPE</th>
								<th>DOWNLOAD</th>
							</tr> -->
							<c:forEach var="notificationdata"
										items="${notificationdata.rows}">
								<tr>
									<html:form action="/notificationdownload" focus="noti_id">

										<!-- <td><c:out value="${notificationdata.noti_id}" /></td> -->
										<td><input type="hidden" name="noti_id"
													value="${notificationdata.noti_id}" height="1" width="1"></td>

										<td><c:out value="${notificationdata.noti_heading}" /></td>
										<td><c:out value="${notificationdata.noti_type}" /></td>
										<td><c:out value="${notificationdata.noti_added_by}" /></td>
										<td>
											<button type="submit"
														value="notificationdownload">
														<font color="red">DOWNLOAD</font>
													</button>
										</td>
									</html:form>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>

</div>
<!-- END OUTPUT from 'sites/all/modules/contributed/views/theme/views-view.tpl.php' -->


</marquee>

      
	   <div class="more-link">
					<a
						href="http://192.168.0.79:8085/DiharIntranet/What's_New.jsp">View all » </a>
      </div>	
	

</div>


    
</div>
	</div>
</body>
</html>