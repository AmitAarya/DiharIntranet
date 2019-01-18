<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>


<html lang="en" dir="ltr" xmlns:content="http://purl.org/rss/1.0/modules/content/" xmlns:dc="http://purl.org/dc/terms/" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:og="http://ogp.me/ns#" xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#" xmlns:sioc="http://rdfs.org/sioc/ns#" xmlns:sioct="http://rdfs.org/sioc/types#" xmlns:skos="http://www.w3.org/2004/02/skos/core#" xmlns:xsd="http://www.w3.org/2001/XMLSchema#" class="js bootstrap-anchors-processed"><head profile="http://www.w3.org/1999/xhtml/vocab"><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
<meta name="Generator" content="Drupal 7 (http://drupal.org)">
  <title>Inbox</title>
  <link type="text/css" rel="stylesheet" href="./What&#39;s New _ UPSC_files/css_lQaZfjVpwP_oGNqdtWCSpJT1EMqXdMiU84ekLLxQnc4.css" media="all">
<link type="text/css" rel="stylesheet" href="./What&#39;s New _ UPSC_files/css_u9Cn6xFPfn6NvRqMGUV6k10stVTR4AGT7eontS75hX4.css" media="all">
<link type="text/css" rel="stylesheet" href="./What&#39;s New _ UPSC_files/css_nFHqLp9HxaWMsvdlBR5CpwK2XX2f_EGKFy2b6e0SyTM.css" media="all">
<link type="text/css" rel="stylesheet" href="./What&#39;s New _ UPSC_files/css_49Nr0L-8U2YhzAR48BXi9k6JeDFzcAY3eFcaubcWPbY.css" media="all">
  <!-- HTML5 element support for IE6-8 -->
  <!--[if lt IE 9]>
    <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->
  <script src="./What&#39;s New _ UPSC_files/respond.min.js.download"></script>
<script src="./What&#39;s New _ UPSC_files/js_BocpO7oV2V9m_et9Sfy-yRJG7oHvwVFyyZ9yKoQrDBM.js.download"></script>
<script>var base_url ="http://www.upsc.gov.in"; var themePath = "sites/all/themes/upsc"; var modulePath = "sites/all/modules/cmf/cmf_content";</script>
<script src="./What&#39;s New _ UPSC_files/js_azzad_4dGM42fQEyYHR3vcj2YOtCAPB_TASnsUhTr9Q.js.download"></script>
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
<script src="./What&#39;s New _ UPSC_files/js_wCYUZ7MVXp50ty1cS_Uxtzduxh125GGyy7HqmR0_M_w.js.download"></script>
<script src="./What&#39;s New _ UPSC_files/js_rKxVL686f0eZJYavLoLpL-F-jLlNvQjDBHCkiw9_vok.js.download"></script>
<script>jQuery.extend(Drupal.settings, {"basePath":"\/","pathPrefix":"","ajaxPageState":{"theme":"upsc","theme_token":"NQIeEqyz9g2ahl4GobwzGVEhJvLnG6FQ7VSv9phi534","js":{"sites\/all\/themes\/bootstrap\/js\/bootstrap.js":1,"sites\/all\/libraries\/respondjs\/respond.min.js":1,"sites\/all\/modules\/contributed\/jquery_update\/replace\/jquery\/1.10\/jquery.js":1,"misc\/jquery.once.js":1,"misc\/drupal.js":1,"0":1,"sites\/all\/modules\/cmf\/cmf_content\/assets\/js\/font-size.js":1,"sites\/all\/modules\/cmf\/cmf_content\/assets\/js\/framework.js":1,"sites\/all\/modules\/cmf\/cmf_content\/assets\/js\/swithcer.js":1,"sites\/all\/modules\/cmf\/goisearch\/js\/custom_result_jsversion.js":1,"sites\/all\/modules\/cmf\/goisearch\/js\/auto_jsversion.js":1,"1":1,"sites\/all\/modules\/contributed\/views_bootstrap\/js\/views-bootstrap-carousel.js":1,"sites\/all\/themes\/upsc\/bootstrap\/js\/affix.js":1,"sites\/all\/themes\/upsc\/bootstrap\/js\/alert.js":1,"sites\/all\/themes\/upsc\/bootstrap\/js\/button.js":1,"sites\/all\/themes\/upsc\/bootstrap\/js\/carousel.js":1,"sites\/all\/themes\/upsc\/bootstrap\/js\/collapse.js":1,"sites\/all\/themes\/upsc\/bootstrap\/js\/dropdown.js":1,"sites\/all\/themes\/upsc\/bootstrap\/js\/modal.js":1,"sites\/all\/themes\/upsc\/bootstrap\/js\/tooltip.js":1,"sites\/all\/themes\/upsc\/bootstrap\/js\/popover.js":1,"sites\/all\/themes\/upsc\/bootstrap\/js\/scrollspy.js":1,"sites\/all\/themes\/upsc\/bootstrap\/js\/tab.js":1,"sites\/all\/themes\/upsc\/bootstrap\/js\/transition.js":1,"sites\/all\/themes\/upsc\/js\/custom.js":1,"sites\/all\/themes\/upsc\/js\/jquery_1.12.4.js":1},"css":{"modules\/system\/system.base.css":1,"sites\/all\/modules\/contributed\/date\/date_api\/date.css":1,"sites\/all\/modules\/contributed\/date\/date_popup\/themes\/datepicker.1.7.css":1,"modules\/field\/theme\/field.css":1,"sites\/all\/modules\/contributed\/views\/css\/views.css":1,"sites\/all\/modules\/contributed\/ckeditor\/css\/ckeditor.css":1,"sites\/all\/modules\/cmf\/cmf_content\/assets\/css\/base.css":1,"sites\/all\/modules\/cmf\/cmf_content\/assets\/css\/font.css":1,"sites\/all\/modules\/cmf\/cmf_content\/assets\/css\/flexslider.css":1,"sites\/all\/modules\/cmf\/cmf_content\/assets\/css\/base-responsive.css":1,"sites\/all\/modules\/cmf\/cmf_content\/assets\/css\/font-awesome.min.css":1,"sites\/all\/modules\/contributed\/ctools\/css\/ctools.css":1,"sites\/all\/modules\/cmf\/goisearch\/css\/custom_result.css":1,"http:\/\/goisas.nic.in\/content\/scripts\/jquery.1.8.7\/themes\/base\/jquery.ui.all.css":1,"sites\/all\/modules\/cmf\/goisearch\/css\/add-css.css":1,"sites\/all\/modules\/contributed\/panels\/css\/panels.css":1,"sites\/all\/themes\/upsc\/css\/style.css":1}},"encrypt_submissions":{"baseUrl":"http:\/\/www.upsc.gov.in"},"urlIsAjaxTrusted":{"\/whats-new":true},"viewsBootstrap":{"carousel":{"1":{"id":1,"name":"main_slider","attributes":{"interval":5000,"pause":false}}}},"bootstrap":{"anchorsFix":1,"anchorsSmoothScrolling":1,"popoverEnabled":0,"popoverOptions":{"animation":1,"html":0,"placement":"right","selector":"","trigger":"click","title":"","content":"","delay":0,"container":"body"},"tooltipEnabled":0,"tooltipOptions":{"animation":1,"html":0,"placement":"auto left","selector":"","trigger":"hover focus","delay":0,"container":"body"}}});</script>
</head>
<body class="html not-front not-logged-in no-sidebars page-whats-new i18n-en" style="">
  <div id="skip-link">
    <a href="http://www.upsc.gov.in/whats-new#main-content" class="element-invisible element-focusable">Skip to main content</a>
  </div>
    

<!-- THEME DEBUG -->
<!-- CALL: theme('page') -->
<!-- FILE NAME SUGGESTIONS:
   * page--whats-new.tpl.php
   x page.tpl.php
-->
<!-- BEGIN OUTPUT from 'sites/all/themes/upsc/templates/page.tpl.php' -->

<header>
        <div class="header-fixed clearfix">
      

<!-- THEME DEBUG -->
<!-- CALL: theme('region') -->
<!-- FILE NAME SUGGESTIONS:
   * region--top-header.tpl.php
   x region.tpl.php
-->
<!-- BEGIN OUTPUT from 'modules/system/region.tpl.php' -->
  <div class="region region-top-header">
    

<!-- THEME DEBUG -->
<!-- CALL: theme('block') -->
<!-- FILE NAME SUGGESTIONS:
   * block--cmf-content--header-region-block.tpl.php
   * block--cmf-content.tpl.php
   * block--top-header.tpl.php
   x block.tpl.php
-->
<!-- BEGIN OUTPUT from 'sites/all/themes/bootstrap/theme/block/block.tpl.php' -->
<section id="block-cmf-content-header-region-block" class="block block-cmf-content clearfix">

      
  <noscript class="no_scr">"JavaScript is a standard programming language that is included to provide interactive features, Kindly enable Javascript in your browser. For details visit help page"
     </noscript><div class="wrapper common-wrapper">
  <div class="container common-container">
      <div class="common-left clearfix">
         <div>

<!-- THEME DEBUG -->
<!-- CALL: theme('search_block_form') -->
<!-- BEGIN OUTPUT from 'sites/all/themes/bootstrap/theme/search/search-block-form.tpl.php' -->
<div>
      <h2 class="element-invisible">Search form</h2>
    <div class="input-group"><input title="Enter the terms you wish to search for." placeholder="Search - Keyword, Phrase" class="form-control form-text" type="text" id="edit-search-block-form--2" name="search_block_form" value="" size="15" maxlength="128"><span class="input-group-btn"><button type="submit" class="btn btn-default">Search</button></span></div><button class="element-invisible btn btn-primary form-submit" id="edit-submit" name="op" value="Search" type="submit">Search</button>
<input type="hidden" name="form_build_id" value="form-5Mj-fmHuX-M5F38tgW6lLDfHZPIGfwEBVICpfpqkEGQ">
<input type="hidden" name="form_id" value="search_block_form">
</div>

<!-- END OUTPUT from 'sites/all/themes/bootstrap/theme/search/search-block-form.tpl.php' -->

</div></form></li></ul>
           
        </div>
        <div class="common-right clearfix">
          <ul id="header-nav">

                               <li> <a onclick="set_font_size(&#39;increase&#39;)" title="Increase font size" href="javascript:void(0);">A<sup>+</sup></a> </li>
                        <li> <a onclick="set_font_size()" title="Reset font size" href="javascript:void(0);">A<sup>&nbsp;</sup></a> </li>
                        <li> <a onclick="set_font_size(&#39;decrease&#39;)" title="Decrease font size" href="javascript:void(0);">A<sup>-</sup></a> </li>
        <li> <a href="javascript:void(0);" class="high-contrast dark" title="High Contrast">A</a> </li>
       <li> <a href="javascript:void(0);" class="high-contrast light" title="Normal Contrast" style="display: none;">A</a> </li>


         
                
                  <li class="hindi"><a target="_blank" href="http://www.upsc.gov.in/hi/whats-new" class="alink">हिन्दी</a></li>
                  	
            </ul>
        </div>
    </div>
</div>
</section> <!-- /.block -->

<!-- END OUTPUT from 'sites/all/themes/bootstrap/theme/block/block.tpl.php' -->



<!-- THEME DEBUG -->
<!-- CALL: theme('block') -->
<!-- FILE NAME SUGGESTIONS:
   * block--block--10.tpl.php
   * block--block.tpl.php
   * block--top-header.tpl.php
   x block.tpl.php
-->
<!-- BEGIN OUTPUT from 'sites/all/themes/bootstrap/theme/block/block.tpl.php' -->
<section id="block-block-10" class="block block-block clearfix">

      
  <style type="text/css">
<!--/*--><![CDATA[/* ><!--*/

#messages {
    display: none;
}

/*--><!]]>*/
</style>
</section> <!-- /.block -->

<!-- END OUTPUT from 'sites/all/themes/bootstrap/theme/block/block.tpl.php' -->

  </div>

<!-- END OUTPUT from 'modules/system/region.tpl.php' -->

    </div>
  <section class="wrapper header-wrapper fontSize" style="font-size: 100%;">
  <div class="container header-container">
  <div class="row">
  <div class="col-md-8 col-sm-8">
      <h1 class="logo"><a href="http://www.upsc.gov.in/whats-new#"><font color="#000066"><strong>रक्षा उच्च तुंगता अनुसंधान  संस्थान</strong></font><font color="#cc3300"> <span>DEFENCE INSTITUTE OF HIGH ALTITUDE RESEARCH</span></font></a></h1>        
    </div>
    
         <div class="col-md-4 col-sm-4 col-xs-6 digital">
            <a><img alt="digital india" src="./What&#39;s New _ UPSC_files/logo.png" class="img-responsive"></a>
        </div>
</div>
</div>
</section>
    
<section id="menu" class="fontSize" style="font-size: 100%;">
    <div class="container">
<nav class="navbar navbar-default">
<div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    
    </div>
 <!-- Design & Developed By Sujeet Kumar Singh & MD Manouwer -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <div id="main-menu">
                    <ul class="menu nav"><li class="first leaf active"><a href="http://192.168.0.79:8085/DiharIntranet/diharhome.jsp" title="" class="active"><i class="fa fa-home">Home</i></a></li>
<li class="expanded dropdown active"><a
							href="http://www.upsc.gov.in/" title="" data-target="#"
							class="dropdown-toggle active" data-toggle="dropdown">Logout<span
								class="caret"></span></a>
							<ul class="dropdown-menu">
								<li class="first leaf fontSize" style="font-size: 100%;"><a
									href="http://192.168.0.79:8085/DiharIntranet/diharhome.jsp">Logout</a></li>
							</ul></li>


</ul>       

                </div>
                </div>

</div></nav>
</div><!-- /.container-->


  </section>
    
    
    
    
    
</header>
<!----------------------------------------------------------------------------------my---------------------------------------------------------------------------->


<!--*********Content wrapper start here *********************-->

  
  <div class="wrapper" id="skipCont"></div>
   <section class="wrapper banner-wrapper fontSize" style="font-size: 100%;">
    
  <div class="wrapper breadcrumb-wrapper">
  	<div class="container breadcrumb-container">
    	            <div id="breadcrumb" class="breadcrumb clearfix">

<!-- THEME DEBUG -->
<!-- CALL: theme('region') -->
<!-- FILE NAME SUGGESTIONS:
   * region--navigation.tpl.php
   x region.tpl.php
-->
<!-- BEGIN OUTPUT from 'modules/system/region.tpl.php' -->
  <div class="region region-navigation">
    

<!-- THEME DEBUG -->
<!-- CALL: theme('block') -->
<!-- FILE NAME SUGGESTIONS:
   * block--easy-breadcrumb--easy-breadcrumb.tpl.php
   * block--easy-breadcrumb.tpl.php
   * block--navigation.tpl.php
   x block.tpl.php
-->
<!-- BEGIN OUTPUT from 'sites/all/themes/bootstrap/theme/block/block.tpl.php' -->
<section id="block-easy-breadcrumb-easy-breadcrumb" class="block block-easy-breadcrumb clearfix">

      
  <div class="easy-breadcrumb"><a href="http://192.168.0.79:8085/DiharIntranet/diharhome.jsp" class="easy-breadcrumb_segment easy-breadcrumb_segment-front">Home</a></div>
</section> <!-- /.block -->

<!-- END OUTPUT from 'sites/all/themes/bootstrap/theme/block/block.tpl.php' -->

  </div>

<!-- END OUTPUT from 'modules/system/region.tpl.php' -->

</div>
              </div>
  </div>
   
  </section>
  
  <section class="wrapper body-wrapper ">
   
        <div class="container body-container inner-body fontSize" style="font-size: 100%;">
        	
          
                	<div class="col-xs-12 col-sm-3 col-md-3 sidebar-container fontSize" style="font-size: 100%;">
                                     </div>
				
				
				
                <div class="col-xs-12 col-sm-9 col-md-9 content-container fontSize" style="font-size: 100%;">			
							
				<div class="inner-right">                              
                <a id="main-content"></a>
                                      <h1 class="heading1">What's New</h1>
                                      <h5>
			<font color="#cc9900">
				<b>|----DATE-----|-------APPLIED BY-----|-----TXN TYPE------|-----DOWNLOAD------|</b></font>
		</h5>
							
 <sql:setDataSource var="dihardb" driver="oracle.jdbc.OracleDriver"
						url="jdbc:oracle:thin:@localhost:1521:XE" user="dihar"
						password="@dihar" />

					<sql:query dataSource="${dihardb}" var="notificationdata">
        select TXN_ID,TXN_DATE,TXN_APPLICANT_ID,TXN_TYPE from txn_master where txn_hod_id='<%=request.getParameter("empId")%>' order by txn_id desc
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
											<td><html:form action="/txnfiledownload" focus="txn_id">

													<!-- <td><c:out value="${notificationdata.noti_id}" /></td> -->
													<td><input type="hidden" name="txn_id"
														value="${notificationdata.txn_id}" height="1" width="1"></td>

													<td><c:out value="-->${notificationdata.txn_date}" /></td>
													<td><c:out value="${notificationdata.txn_applicant_id}" /></td>
													<td><font colour="blue"><c:out
																value="${notificationdata.txn_type}" /></font></td>

													<td>
														<button type="submit" class="login__submit"
															value="txnfiledownload">
															<font color="red">DOWNLOAD</font>
														</button>
													</td>
												</html:form></td>
											
											<tr>
										
										<html:form action="/txnfilereturn" focus="txn_id" enctype="multipart/form-data">                                                   
                                                       <td><input type="hidden" name="txn_id"
														value="${notificationdata.txn_id}" height="1" width="1"></td>
														
														<td><h4>Remarks :</h4>
				                                       <html:text property="returnremarks" /></td>
													<td><div class="file-chooser">
														<!--  <input class="file-chooser__input" type="file">-->
														<html:file property="txn_upload_file"></html:file>

													</div></td>

													<td>
														<button type="submit" class="login__submit"
															value="txnfiledownload">
															<font color="red">UPLOAD</font>
														</button>
													</td>
												</html:form>				
										
										</tr>
								</c:forEach>
						</table>
					</div>

				</div>

    </div>

	
</section>

<!----------------------Content Wrapper Ends here ---------------------------------------------------->



<footer class="footer fontSize" style="font-size: 100%;">
<div class="container">
  

<!-- THEME DEBUG -->
<!-- CALL: theme('region') -->
<!-- FILE NAME SUGGESTIONS:
   * region--footer.tpl.php
   x region.tpl.php
-->
<!-- BEGIN OUTPUT from 'modules/system/region.tpl.php' -->
  <div class="region region-footer">
    

<!-- THEME DEBUG -->
<!-- CALL: theme('block') -->
<!-- FILE NAME SUGGESTIONS:
   * block--cmf-content--footer-region-block.tpl.php
   * block--cmf-content.tpl.php
   * block--footer.tpl.php
   x block.tpl.php
-->
<!-- BEGIN OUTPUT from 'sites/all/themes/bootstrap/theme/block/block.tpl.php' -->
<section id="block-cmf-content-footer-region-block" class="block block-cmf-content clearfix">

      
  <footer class="wrapper footer-wrapper">
	<div class="footer-top-wrapper">
    	<div class="container footer-top-container"><ul class="menu nav"><li class="first leaf"><a href="http://192.168.0.79:8085/DiharIntranet/DevelopmentInProgress.jsp" title="">Website Policies</a></li>
<li class="leaf"><a href="http://192.168.0.79:8085/DiharIntranet/DevelopmentInProgress.jsp" title="">Help</a></li>
<li class="leaf"><a href="http://192.168.0.79:8085/DiharIntranet/DevelopmentInProgress.jsp" title="">Contact us</a></li>
<li class="leaf"><a href="http://192.168.0.79:8085/DiharIntranet/DevelopmentInProgress.jsp" title="">Web Information Manager</a></li>
<li class="leaf"><a href="http://192.168.0.79:8085/DiharIntranet/DevelopmentInProgress.jsp" title="">Feedback</a></li>
<li class="leaf"><a href="http://192.168.0.79:8085/DiharIntranet/DevelopmentInProgress.jsp" title="">Privacy Policy</a></li>
<li class="last leaf"><a href="http://192.168.0.79:8085/DiharIntranet/DevelopmentInProgress.jsp">Disclaimer</a></li>
</ul></div>
    </div>
    <div class="footer-bottom-wrapper">
    	<div class="container footer-bottom-container">
        	<div class="footer-content clearfix "><div class="copyright-content">
            	Website Content Managed by © DIHAR HQ. LEH, India. 
            <span>Designed, Developed  by  <font color="#000066"><a href="" title="Amit Kumar"
									target="_blank">Amit Kumar STA 'B'</a></font> <span class="lastupdated">Last Updated 09 April 2018</span>
            </div>
            
             <!--div class="logo-cmf">
            	<a href="#" target="_blank"><img src="http://www.upsc.gov.in/sites/all/modules/cmf/cmf_content/assets/images/cmf-logo.png" alt="Content Management Framework"></a>
            </div-->
                </div>
        </div>
    </div>
</footer>
</section> <!-- /.block -->

<!-- END OUTPUT from 'sites/all/themes/bootstrap/theme/block/block.tpl.php' -->

  </div>

<!-- END OUTPUT from 'modules/system/region.tpl.php' -->

  <div class="visitor-counter">
   <ul class="visitor-ul"><li>     
	   Visitor No:55383463</li>
   
   </ul>
   
   <p><small>     
	   (Since: 15  Sep 2016)</small></p>

  </div>

  </div>
</footer>

<!-- END OUTPUT from 'sites/all/themes/upsc/templates/page.tpl.php' -->

  

<!-- THEME DEBUG -->
<!-- CALL: theme('region') -->
<!-- FILE NAME SUGGESTIONS:
   * region--page-bottom.tpl.php
   x region.tpl.php
-->
<!-- BEGIN OUTPUT from 'modules/system/region.tpl.php' -->

<!-- END OUTPUT from 'modules/system/region.tpl.php' -->

<script src="./What&#39;s New _ UPSC_files/js_B2uv6dkjoYobfQVyuXdchgrpnnx4oM0TkP_bDVf8Qrg.js.download"></script>



<!-- END OUTPUT from 'sites/all/themes/upsc/templates/html.tpl.php' -->

</body></html>