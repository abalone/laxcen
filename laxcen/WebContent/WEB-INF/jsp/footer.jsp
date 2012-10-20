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
		 	<td width="45%">
		 		<div class="borderright">
		 			Contact Information: info here
		 		</div>
		 	</td>
		 	<td width="25%">
		 		<div class="borderright">
		 			<img src="img/social.png"></img>
		 		</div>
		 	</td>
		 	<td width="30%">
		 		<div class="left">
		 			<img src="img/EnvelopeHS.png" height="14px"></img> <spring:message code="contact.email"></spring:message><a href="mailto:<spring:message code='contact.email.address'></spring:message>?subject=About Laxcen"><spring:message code="contact.email.address"></spring:message></a><br>
		 			<img src="img/Call.png" height="14px"></img> <spring:message code="HK"> </spring:message>  <a><spring:message code="contact.phone.hk"></spring:message></a><br>
		 			<img src="img/Call.png" height="14px"></img> <spring:message code="NB"> </spring:message> <a><spring:message code="contact.phone.nb"></spring:message></a><br>
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