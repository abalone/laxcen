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
<table>
		 <tr>
		 	<td>
		 		<div class="borderright">
		 			Contact Information: info here
		 		</div>
		 	</td>
		 	<td>
		 		<div class="borderright">
		 			Quick Link Here
		 		</div>
		 	</td>
		 	<td>
		 		<div>
		 			More things here
		 		</div>
		 	</td>
		 </tr>
</table>
<div class="copyright middle">
	<spring:message code="copyright"></spring:message>
	<br>
	<spring:message code="term"></spring:message> | <spring:message code="policy"></spring:message>	
</div>
</body>
</html>