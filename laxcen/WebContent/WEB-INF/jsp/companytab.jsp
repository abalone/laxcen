<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="css/company.css"/>
<script src="js/jquery-1.8.2.min.js"></script>
<script src="js/company.js"></script>
<title>Laxcen</title>
</head>
<body>
<table>
	<tr>
		<td width="30%">
		</td>
		<td width="70%">
			<div class="companycontent contentfont">
				<jsp:include page="companycontent.jsp"></jsp:include>
			</div>
		</td>
	</tr>
</table>
</body>
</html>
