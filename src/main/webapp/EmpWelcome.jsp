<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en" dir="ltr"
	xmlns:content="http://purl.org/rss/1.0/modules/content/"
	xmlns:dc="http://purl.org/dc/terms/"
	xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:og="http://ogp.me/ns#"
	xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
	xmlns:sioc="http://rdfs.org/sioc/ns#"
	xmlns:sioct="http://rdfs.org/sioc/types#"
	xmlns:skos="http://www.w3.org/2004/02/skos/core#"
	xmlns:xsd="http://www.w3.org/2001/XMLSchema#"
	class="js bootstrap-anchors-processed">
<head profile="http://www.w3.org/1999/xhtml/vocab">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head profile="http://www.w3.org/1999/xhtml/vocab">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="Generator" content="Drupal 7 (http://drupal.org)">

<title>Employee Welcome</title>
<link type="text/css" rel="stylesheet"
	href="./Welcome to UPSC _ UPSC_files/css_lQaZfjVpwP_oGNqdtWCSpJT1EMqXdMiU84ekLLxQnc4.css"
	media="all">
<link type="text/css" rel="stylesheet"
	href="./Welcome to UPSC _ UPSC_files/css_u9Cn6xFPfn6NvRqMGUV6k10stVTR4AGT7eontS75hX4.css"
	media="all">
<link type="text/css" rel="stylesheet"
	href="./Welcome to UPSC _ UPSC_files/css_MLnTVauaZ3xU71FCGRx8ssffNeDNw9lXOXaHZZcXrQ0.css"
	media="all">
<link type="text/css" rel="stylesheet"
	href="./Welcome to UPSC _ UPSC_files/css_49Nr0L-8U2YhzAR48BXi9k6JeDFzcAY3eFcaubcWPbY.css"
	media="all">

<!-- <link rel="stylesheet" href="css/style.css"> -->
<link rel="stylesheet" href="css/welcome.css">
<!-- HTML5 element support for IE6-8 -->
<!--[if lt IE 9]>
    <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->
<script src="./Welcome to UPSC _ UPSC_files/respond.min.js.download"></script>
<script
	src="./Welcome to UPSC _ UPSC_files/js_BocpO7oV2V9m_et9Sfy-yRJG7oHvwVFyyZ9yKoQrDBM.js.download"></script>
<script
	src="./Welcome to UPSC _ UPSC_files/js_9Vtb-0lQ1l1xLzWcnHMMI-cqckKAD6sx-bQMsNqqM88.js.download"></script>
<script
	src="./Welcome to UPSC _ UPSC_files/js_QwNN-JdAEdJ7FW58qqObESLBwrQxseWoGc6C_gzQKYg.js.download"></script>
<script>var base_url ="http://www.upsc.gov.in"; var themePath = "sites/all/themes/upsc"; var modulePath = "sites/all/modules/cmf/cmf_content";</script>
<script
	src="./Welcome to UPSC _ UPSC_files/js_azzad_4dGM42fQEyYHR3vcj2YOtCAPB_TASnsUhTr9Q.js.download"></script>
<script>
		jQuery(document).ready(function(){
			var searchStr = "";
			if(searchStr != ""){
				fetchResult();
			}
		});	
		var currentKey = 0;
		settings = new Array();
		settings["searchServer"] = "http://goisearch.gov.in";
		settings["textBoxId"] = "q";
		settings["callBackFunction"] = "callBack";
		loadSuggestionControls(settings);

		function callBack() {
			settings["q"] = document.getElementById("search_key").value;
			settings["count"] = "10";
			settings["site"] = "122.160.186.147/upsc";
			loadResultControls(settings);
		}

		settings = new Array();
		settings["searchServer"] = "http://goisearch.gov.in";
		settings["textBoxId"] = "search_key";
		settings["site"] = "122.160.186.147/upsc";
		settings["q"] = "";
		loadResultControls(settings);

		function modifySettings(key1) {
			if (document.getElementById("search_key").value != null) {
				settings[key1] = document.getElementById("search_key").value;
				settings["count"] = "10";
				settings["site"] = "122.160.186.147/upsc";
				loadResultControls(settings);
			}
			hideAutoComplete();
		}

		function fetchResult() {
			var str = window.document.URL.toString();
			str=escape(str);
			var q = str.indexOf("?search_key=") + 12;
			settings["q"] = str.slice(q);
			settings["count"] = "10";
			settings["site"] = "122.160.186.147/upsc";
			loadResultControls(settings);
		}

		function escape(string) {
				return ("" + string).replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;").replace(/"/g, "&quot;").replace(/"/g, "&#x27;").replace(/\//g, "&#x2F;").replace(/\+/g," ");
		};
		</script>
<script
	src="./Welcome to UPSC _ UPSC_files/js_u9XzY8GuIn7LRlzzmkoMbzg3ZjQZRlcForDmeex8alU.js.download"></script>
<script
	src="./Welcome to UPSC _ UPSC_files/js_rKxVL686f0eZJYavLoLpL-F-jLlNvQjDBHCkiw9_vok.js.download"></script>
<script
	src="./Welcome to UPSC _ UPSC_files/js_iiro2olv-RX3gC3Gs2RbWAN3fitln8gMi7wDaiQWkFg.js.download"></script>
<script>jQuery.extend(Drupal.settings, {"basePath":"\/","pathPrefix":"","ajaxPageState":{"theme":"upsc","theme_token":"Ujyy6y1SRLW1zdtbnxX5j8cnRMECQ1c8ycnfbIrylwA","jquery_version":"1.10","js":{"sites\/all\/themes\/bootstrap\/js\/bootstrap.js":1,"sites\/all\/libraries\/respondjs\/respond.min.js":1,"sites\/all\/modules\/contributed\/jquery_update\/replace\/jquery\/1.10\/jquery.js":1,"misc\/jquery.once.js":1,"misc\/drupal.js":1,"sites\/all\/modules\/contributed\/jquery_update\/replace\/ui\/external\/jquery.cookie.js":1,"sites\/all\/modules\/contributed\/jquery_update\/replace\/misc\/jquery.form.js":1,"misc\/ajax.js":1,"sites\/all\/modules\/contributed\/jquery_update\/js\/jquery_update.js":1,"sites\/all\/themes\/bootstrap\/js\/misc\/_progress.js":1,"0":1,"sites\/all\/modules\/cmf\/cmf_content\/assets\/js\/font-size.js":1,"sites\/all\/modules\/cmf\/cmf_content\/assets\/js\/framework.js":1,"sites\/all\/modules\/cmf\/cmf_content\/assets\/js\/swithcer.js":1,"sites\/all\/modules\/cmf\/goisearch\/js\/custom_result_jsversion.js":1,"sites\/all\/modules\/cmf\/goisearch\/js\/auto_jsversion.js":1,"1":1,"sites\/all\/modules\/contributed\/views_bootstrap\/js\/views-bootstrap-carousel.js":1,"sites\/all\/modules\/contributed\/views\/js\/base.js":1,"sites\/all\/modules\/contributed\/views\/js\/ajax_view.js":1,"sites\/all\/modules\/contributed\/quicktabs\/js\/quicktabs.js":1,"sites\/all\/themes\/upsc\/bootstrap\/js\/affix.js":1,"sites\/all\/themes\/upsc\/bootstrap\/js\/alert.js":1,"sites\/all\/themes\/upsc\/bootstrap\/js\/button.js":1,"sites\/all\/themes\/upsc\/bootstrap\/js\/carousel.js":1,"sites\/all\/themes\/upsc\/bootstrap\/js\/collapse.js":1,"sites\/all\/themes\/upsc\/bootstrap\/js\/dropdown.js":1,"sites\/all\/themes\/upsc\/bootstrap\/js\/modal.js":1,"sites\/all\/themes\/upsc\/bootstrap\/js\/tooltip.js":1,"sites\/all\/themes\/upsc\/bootstrap\/js\/popover.js":1,"sites\/all\/themes\/upsc\/bootstrap\/js\/scrollspy.js":1,"sites\/all\/themes\/upsc\/bootstrap\/js\/tab.js":1,"sites\/all\/themes\/upsc\/bootstrap\/js\/transition.js":1,"sites\/all\/themes\/upsc\/js\/custom.js":1,"sites\/all\/themes\/upsc\/js\/jquery_1.12.4.js":1,"sites\/all\/themes\/bootstrap\/js\/modules\/views\/js\/ajax_view.js":1,"sites\/all\/themes\/bootstrap\/js\/misc\/ajax.js":1},"css":{"modules\/system\/system.base.css":1,"sites\/all\/modules\/contributed\/date\/date_api\/date.css":1,"sites\/all\/modules\/contributed\/date\/date_popup\/themes\/datepicker.1.7.css":1,"modules\/field\/theme\/field.css":1,"sites\/all\/modules\/contributed\/views\/css\/views.css":1,"sites\/all\/modules\/contributed\/ckeditor\/css\/ckeditor.css":1,"sites\/all\/modules\/cmf\/cmf_content\/assets\/css\/base.css":1,"sites\/all\/modules\/cmf\/cmf_content\/assets\/css\/font.css":1,"sites\/all\/modules\/cmf\/cmf_content\/assets\/css\/flexslider.css":1,"sites\/all\/modules\/cmf\/cmf_content\/assets\/css\/base-responsive.css":1,"sites\/all\/modules\/cmf\/cmf_content\/assets\/css\/font-awesome.min.css":1,"sites\/all\/modules\/contributed\/ctools\/css\/ctools.css":1,"sites\/all\/modules\/cmf\/goisearch\/css\/custom_result.css":1,"http:\/\/goisas.nic.in\/content\/scripts\/jquery.1.8.7\/themes\/base\/jquery.ui.all.css":1,"sites\/all\/modules\/cmf\/goisearch\/css\/add-css.css":1,"sites\/all\/modules\/contributed\/panels\/css\/panels.css":1,"sites\/all\/modules\/contributed\/quicktabs\/css\/quicktabs.css":1,"sites\/all\/themes\/upsc\/css\/style.css":1}},"encrypt_submissions":{"baseUrl":"http:\/\/www.upsc.gov.in"},"urlIsAjaxTrusted":{"\/":true,"\/quicktabs\/ajax\/related_links\/0\/view\/related_links\/block\/1\/node\/":true},"viewsBootstrap":{"carousel":{"1":{"id":1,"name":"main_slider","attributes":{"interval":5000,"pause":false}}}},"ajax":{"quicktabs-tab-related_links-0":{"progress":{"message":"","type":"throbber"},"event":"click","url":"\/quicktabs\/ajax\/related_links\/0\/view\/related_links\/block\/1\/node\/"}},"quicktabs":{"qt_related_links":{"name":"related_links","tabs":[{"vid":"related_links","display":"block","args":"","view_path":"node","view_dom_id":1,"ajax_args":"","actual_args":[]}],"ajaxPageState":{"jquery_version":"1.10"}}},"bootstrap":{"anchorsFix":1,"anchorsSmoothScrolling":1,"popoverEnabled":0,"popoverOptions":{"animation":1,"html":0,"placement":"right","selector":"","trigger":"click","title":"","content":"","delay":0,"container":"body"},"tooltipEnabled":0,"tooltipOptions":{"animation":1,"html":0,"placement":"auto left","selector":"","trigger":"hover focus","delay":0,"container":"body"}}});</script>
</head>

<body bgcolor="#E6E6FA">


	<!-- THEME DEBUG -->
	<!-- CALL: theme('page') -->
	<!-- FILE NAME SUGGESTIONS:
   x page--front.tpl.php
   * page--node.tpl.php
   * page.tpl.php
-->
	<!-- BEGIN OUTPUT from 'sites/all/themes/upsc/templates/page--front.tpl.php' -->
	﻿
	<header>
	<div class="header-fixed clearfix">
	<table>
	<tr><th><h4><font color="blue">WELCOME:</font></h4></th>
	<th><h4><font color="#006600">
			<input type="text" value="<%=session.getAttribute("userName")%>" />
		</font></h4></th>

	</tr>
	
	</table>

		<!-- THEME DEBUG -->
		<!-- CALL: theme('region') -->
		<!-- FILE NAME SUGGESTIONS:
   * region--top-header.tpl.php
   x region.tpl.php
-->
		<!-- BEGIN OUTPUT from 'modules/system/region.tpl.php' -->

	</div>
	<section class="wrapper header-wrapper fontSize"
		style="font-size: 100%;">
	<div class="container header-container">
		<div class="row">
			<div class="col-md-8 col-xs-8 col-sm-8">
				<h1 class="logo">
					<a href="http://192.168.0.79:8085/DiharIntranet/"><font
						color="#000066"><strong>रक्षा उच्च तुंगता अनुसंधान संस्थान</strong></font> <font color="#cc3300"><span>DEFENCE INSTITUTE OF HIGH ALTITUDE RESEARCH</span></font></a>
				</h1>
			</div>

			<div class="col-md-4 col-sm-4 col-xs-4 digital">
				<a><img alt="digital india"
					src="./Welcome to UPSC _ UPSC_files/logo.png"
					class="img-responsive"></a>
			</div>
		</div>
	</div>
	</section> <section id="menu" class="fontSize" style="font-size: 100%;">
	<div class="container">
		<nav class="navbar navbar-default">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->

			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>

			</div>

			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<div id="main-menu">
					<ul class="menu nav">
						<li class="first leaf active"><a
							href="http://192.168.0.79:8085/DiharIntranet/diharhome.jsp"
							title="" class="active"><i class="fa fa-home">Home</i></a></li>
							
						<li class="expanded dropdown active"><a
							href="http://www.upsc.gov.in/" title="" data-target="#"
							class="dropdown-toggle active" data-toggle="dropdown">LEAVE<span
								class="caret"></span></a>
						<ul class="dropdown-menu">
								<li class="first leaf fontSize" style="font-size: 100%;"><a
									href="http://192.168.0.79:8085/DiharIntranet/ApplyForLeave.jsp?empId=<%=session.getAttribute("userId")%>">Apply
										For LEAVE</a></li>

							</ul></li>
						<li class="expanded dropdown active"><a
							href="http://www.upsc.gov.in/" title="" data-target="#"
							class="dropdown-toggle active" data-toggle="dropdown">TD<span
								class="caret"></span></a>
						<ul class="dropdown-menu">
								<li class="first leaf fontSize" style="font-size: 100%;"><a
									href="http://192.168.0.79:8085/DiharIntranet/ApplyForLeave.jsp?empId=<%=session.getAttribute("userId")%>"
									title="">Apply For TD</a></li>


							</ul></li>
						<li class="expanded dropdown active"><a
							href="http://www.upsc.gov.in/" title="" data-target="#"
							class="dropdown-toggle active" data-toggle="dropdown">CASH
								PURCHASE<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
								<li class="first leaf fontSize" style="font-size: 100%;"><a
									href="http://192.168.0.79:8085/DiharIntranet/ApplyForLeave.jsp?empId=<%=session.getAttribute("userId")%>"
									title="">Apply For CASH PURCHASE</a></li>


							</ul></li>
							
							<li class="expanded dropdown active"><a
							href="http://www.upsc.gov.in/" title="" data-target="#"
							class="dropdown-toggle active" data-toggle="dropdown">GENERAL APPLICATION<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
								<li class="first leaf fontSize" style="font-size: 100%;"><a
									href="http://192.168.0.79:8085/DiharIntranet/ApplyForLeave.jsp?empId=<%=session.getAttribute("userId")%>"
									title="">GENERAL APPLICATION</a></li>


							</ul></li>

					</ul>

				</div>
			</div>





		</div>
		</nav>
	</div>
	<!-- /.container--> </section>



<table >
  <tr>
    <th height="200" width="45">
<!--<div class="welcomedemo">-->
		<div class="login">

			<html:form action="/fileupload" focus="noti_heading"
				enctype="multipart/form-data">
				<!--  <form method="post" class="file-uploader" action="/fileupload"
				enctype="multipart/form-data">-->
				
                  <div class="file-uploader__message-area">
					
					<h3><font color="#00cc00">Upload New Notification</font></h3>					
				</div>
<table>
<tr><td><h4><font color="blue">HEADING :</font></h4></td>
    <td><font color="blue"><html:text property="noti_heading" /></font></td>
</tr>


<tr><td><h4><font color="blue">TYPE :</font></h4></td>
    <td><font color="blue"><html:select property="noti_type">
					<option value="common">COMMON</option>
					<option value="admin">ADMIN</option>
					<option value="drds">DRDS</option>
					<option value="drtc">DRTC</option>
				</html:select></font></td>
</tr>

<tr><td><font color="blue">FILE :</font></td>
    <td><font color="blue"><div class="file-chooser">
					<!--  <input class="file-chooser__input" type="file">-->
					<html:file property="noti_file"></html:file>

				</div>
    </font></td>
</tr>

</table>
		<h4><font color="#00cc00"><input class="login__submit" type="submit" value="upload"></font></h4>		

			</html:form>
		</div>
	<!--</div>-->
</th>
    <th height="200" width="70">
<!--<div class="inboxdemo">-->
		<div class="login">
			<div class="whats-new-welcome fontSize" style="font-size: 90%;">



				<h2 class="whats-heading">
					<font color="red">Inbox </font>
				</h2>

				<h5>
					<font color="#000066"> <b>|------DATE-------|--------APPLIED BY-------|--------TXN TYPE---------|------DOWNLOAD-------|</b></font>
				</h5>




				<div class="pull-right">
					<div class="marts-marq">
						<span><a class="btn btn-default"
							onclick="document.getElementById(&#39;mymarquee&#39;).stop();"><i
								class="glyphicon glyphicon-stop"></i></a></span> <span><a
							class="btn btn-default"
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
							<!--  <div class="view-header">
						<ul class="test arrows" style="margin-left: 10px;">
							<li><a
								href="http://192.168.0.79:8085/DiharIntranet/notification/TaDaClaimLimit.pdf">Time
									Limit For Submission Of Claim For TA </a></li>
							<!--li><a href="sites/default/files/wr_ifsp_2017.pdf">Result: Indian Forest Service (Prelim.) Examination 2017 through CS(P) Examination 2017</a></li-->
							</ul>
						</div>



						<div class="view-content">

							<sql:setDataSource var="dihardb"
								driver="oracle.jdbc.OracleDriver"
								url="jdbc:oracle:thin:@localhost:1521:XE" user="dihar"
								password="@dihar" />

							<sql:query dataSource="${dihardb}" var="txndata">
        select TXN_ID,TXN_DATE,TXN_APPLICANT_ID,TXN_TYPE from txn_master where txn_hod_id='<%=session.getAttribute("userId")%>' order by txn_id desc
    </sql:query>

							<div align="center">
								<table border="1" cellpadding="5">

									<!--  <tr>
								<th>ID</th>
								<th>HEADING</th>
								<th>TYPE</th>
								<th>DOWNLOAD</th>
							</tr> -->
									<c:forEach var="txndata" items="${txndata.rows}">
										<tr>
											<td><html:form action="/txnfiledownload" focus="txn_id">

													<!-- <td><c:out value="${notificationdata.noti_id}" /></td> -->
													<td><input type="hidden" name="txn_id"
														value="${txndata.txn_id}" height="1" width="1"></td>

													<td><font color="blue"><c:out value="==>> ${txndata.txn_date}" /></font></td>
													<td><font color="blue"><c:out value="${txndata.txn_applicant_id}" /></font></td>
													<td><font color="blue"><c:out
																value="${txndata.txn_type}" /></font></td>

													<td>
														<button type="submit" class="login__submit"
															value="txnfiledownload">
															<font color="#00ff00">DOWNLOAD</font>
														</button>
													</td>
												</html:form></td>
											
											
										</tr>
									
									</c:forEach>
								</table>
							</div>

						</div>

					</marquee>
				</div>
				<!-- END OUTPUT from 'sites/all/modules/contributed/views/theme/views-view.tpl.php' -->



				<div class="more-link">
					<a href="http://192.168.0.79:8085/DiharIntranet/EmpInbox.jsp?empId=<%=session.getAttribute("userId")%>">Go to INBOX » </a>
				</div>



			</div>
		</div>
	<!--</div>-->
</th> 
    <th height="200" width="50">
<!--<div class="notificationdemo" >-->
		<div class="login">
			<div class="whats-new-welcome fontSize" style="font-size: 90%;">


				<h2 class="whats-heading">
					<font color="red">Notification </font>
				</h2>

				<h5>
					<font color="#000066"> <b>|--------------------HEADING-----------------|-------TYPE-------|-----DOWNLOAD------|</b></font>
				</h5>




				<div class="pull-right">
					<div class="marts-marq">
						<span><a class="btn btn-default"
							onclick="document.getElementById(&#39;mymarquee&#39;).stop();"><i
								class="glyphicon glyphicon-stop"></i></a></span> <span><a
							class="btn btn-default"
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
							<!--  <div class="view-header">
						<ul class="test arrows" style="margin-left: 10px;">
							<li><a
								href="http://192.168.0.79:8085/DiharIntranet/notification/TaDaClaimLimit.pdf">Time
									Limit For Submission Of Claim For TA </a></li>
							<!--li><a href="sites/default/files/wr_ifsp_2017.pdf">Result: Indian Forest Service (Prelim.) Examination 2017 through CS(P) Examination 2017</a></li-->
							</ul>
						</div>



						<div class="view-content">

							<sql:setDataSource var="dihardb"
								driver="oracle.jdbc.OracleDriver"
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

												<td ><font color="blue"><c:out value="==>> ${notificationdata.noti_heading}" /></font></td>
												<td ><font color="blue"><c:out
															value="${notificationdata.noti_type}" /></font></td>
												<td><c:out value="${notificationdata.noti_added_by}" /></td>
												<td>
													<button type="submit" class="login__submit"
														value="notificationdownload">
														<font color="#00ff00">DOWNLOAD</font>
													</button>
												</td>
											</html:form>
										</tr>
									</c:forEach>
								</table>
							</div>



						</div>
					</marquee>
				</div>
				<!-- END OUTPUT from 'sites/all/modules/contributed/views/theme/views-view.tpl.php' -->





				<div class="more-link">
					<a href="http://192.168.0.79:8085/DiharIntranet/What's_New.jsp">View
						all » </a>
				</div>


			</div>

		</div>
	<!--</div>-->
   </th>
  </tr>
  
 </table>


</body>
</html>