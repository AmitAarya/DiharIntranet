<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP List Users Records</title>
</head>
<body>
	
	<sql:setDataSource var="dihardb" driver="oracle.jdbc.OracleDriver"
		url="jdbc:oracle:thin:@localhost:1521:XE" user="dihar"
		password="@dihar" />

	<sql:query  dataSource="${dihardb}" var="notificationdata">
        select noti_id, noti_heading, noti_type, noti_added_by from notification_master
    </sql:query>

	<div align="center">
		<table border="1" cellpadding="5">
			<caption>
				<h2>Notification List</h2>
			</caption>
			<tr>
				<th>ID</th>
				<th>HEADING</th>
				<th>TYPE</th>
				<th>ADDED BY</th>
			</tr>
			<c:forEach var="notificationdata" items="${notificationdata.rows}">
				<tr>
					<td><c:out value="${notificationdata.noti_id}" /></td>
					<td><c:out value="${notificationdata.noti_heading}" /></td>
					<td><c:out value="${notificationdata.noti_type}" /></td>
					<td><c:out value="${notificationdata.noti_added_by}" /></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
>
