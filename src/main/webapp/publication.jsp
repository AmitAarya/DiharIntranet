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

<div >
  

<div id="header">
	<h1>DIHAR - PUBLICATION<span class="style1"></span></h1>
    <h2>ExtraOrdinary Service</h2>	

</div>

<div id="navigation">
    <ul>
    <li><a href="http://192.168.0.79:8085/DiharIntranet/diharhome.jsp">Home</a></li>
    <li><a href="create.html">Publication</a></li>
    <li><a href="balance1.jsp">Annual Report</a></li>
    <li><a href="deposit1.jsp">Sindhu Darshan</a></li>
    <li><a href="withdraw1.jsp">Events</a></li>
    <li><a href="about.jsp">ABOUT US</a></li>
    </ul>
</div>
<section class="wrapper body-wrapper ">
   
        <div class="container body-container inner-body fontSize" style="font-size: 100%;">
        	
          
                	<div class="col-xs-12 col-sm-3 col-md-3 sidebar-container fontSize" style="font-size: 100%;">
                                     </div>
				
				
				
                <div class="col-xs-12 col-sm-9 col-md-9 content-container fontSize" style="font-size: 100%;">			
							
				<div class="inner-right">                              
						
 <sql:setDataSource var="dihardb" driver="oracle.jdbc.OracleDriver"
						url="jdbc:oracle:thin:@localhost:1521:XE" user="dihar"
						password="@dihar" />

					<sql:query dataSource="${dihardb}" var="publicationdata">
        select publication_id, publication_heading, publication_author ,publication_year from publication_master order by publication_year desc
    </sql:query>

					<div align="center">
						<table border="1" cellpadding="5">

							<!--  <tr>
								<th>ID</th>
								<th>HEADING</th>
								<th>TYPE</th>
								<th>DOWNLOAD</th>
							</tr> -->
							<tr>
							<th>#</th>
							<th><b>HEADING</b></th>
							<th>AUTHOR</th>
							<th>YEAR</th>
							<th>DOWNLOAD</th>	                        
							</tr>
							
							<c:forEach var="publicationdata"
								items="${publicationdata.rows}">
								<tr>
									<html:form action="/publicationfiledownload" focus="publication_id">

										<!-- <td><c:out value="${notificationdata.noti_id}" /></td> -->
										<td><input type="hidden" name="publication_id" value="${publicationdata.publication_id}" height="1" width="1"></td>

										<td><b><c:out value="${publicationdata.publication_heading}" /></b></td>
										<td><c:out value="${publicationdata.publication_author}" /></td>
										<td><c:out value="${publicationdata.publication_year}" /></td>
										<td>
											<button type="submit" class="login__submit"
												value="publicationdownload"><font color="green">DOWNLOAD</font></button>
										</td>
									</html:form>
								</tr>
							</c:forEach>
						</table>
					</div>

				</div>

    </div>

	
</section>


</body>
</html>