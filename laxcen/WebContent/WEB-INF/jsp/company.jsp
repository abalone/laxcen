<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="css/laxcen.css"/>
<script src="js/jquery-1.8.2.min.js"></script>
<script src="js/laxcen.js"></script>
<title><spring:message code="menu2"></spring:message></title>
</head>
<body>
<c:set var="menuId" value="2" scope="request"/>
<c:set var="submenuNameList" scope="request"><spring:message code="menu2.1"></spring:message>,<spring:message code="menu2.2"></spring:message>,<spring:message code="menu2.3"></spring:message>,<spring:message code="menu2.4"></spring:message></c:set>
<c:set var="submenuList" value="${fn:split(submenuNameList, ',')}" scope="request"/>

<div class="frame borderline">
	<div class="head sitefont">
		<jsp:include page="header.jsp"></jsp:include>
	</div>
	<div class="mainbody">
		<div class="subdiv borderline">
		<div class="submenubar sitefont">
			<jsp:include page="submenu.jsp"></jsp:include>
		</div>
		<div class="subcontent">
		<% String submenuId = request.getParameter("subM");
			if(submenuId == null){
				submenuId = "1";
			}
			
			if(submenuId.equals("1")){
		%>
			<jsp:include page="company/aboutLaxcen.jsp"></jsp:include>
		<%}else if(submenuId.equals("2")){ %>
			<jsp:include page="company/management.jsp"></jsp:include>
		<%}else if(submenuId.equals("3")){ %>
			<jsp:include page="company/partners.jsp"></jsp:include>
		<%}else if(submenuId.equals("4")){ %>
			<jsp:include page="company/jobs.jsp"></jsp:include>
		<%}%>
		</div>
		</div>
	</div>
	<div class="tail sitefont">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</div>
</body>
</html>
