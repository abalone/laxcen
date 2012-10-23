<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<div class=<%=request.getParameter("class")%>>
	<div class="prod_title"><b><%=request.getParameter("title")%></b><br><%=request.getParameter("desp")%></div>
	<div class="more_detail right"><a href=<%=request.getParameter("url")%>><spring:message code="more"></spring:message></a></div>
</div>
</body>
</html>