<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="css/laxcen.css"/>
<script src="js/jquery-1.8.2.min.js"></script>
<script src="js/laxcen.js"></script>
<title><spring:message code="menu6"></spring:message></title>
</head>
<body>
<c:set var="menuId" value="6" scope="request"/>
<div class="frame borderline">
	<div class="head sitefont">
		<jsp:include page="header.jsp"></jsp:include>
	</div>
	<div class="mainbody">
		<div class="subdiv borderline">
			<div class="subcontent">
				<jsp:include page="subcontent.jsp"></jsp:include>
			</div>
		</div>
	</div>
	<div class="tail sitefont">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</div>
</body>
</html>
