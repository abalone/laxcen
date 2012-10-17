<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Laxcen</title>
</head>
<body>
<table>
	<tr>
		<td width="20%">
			<div class="submenu sitefont">
				<jsp:include page="submenu.jsp"></jsp:include>
			</div>
			<div class="randomsector">
				<jsp:include page="randomsector.jsp"></jsp:include>
			</div>
		</td>
		<td width="80%">
			<div class="subcontent contentfont">
				<jsp:include page="subcontent.jsp"></jsp:include>
			</div>
		</td>
	</tr>
</table>
</body>
</html>
