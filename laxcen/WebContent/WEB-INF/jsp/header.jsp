<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="js/menu.js"></script>
<title></title>
</head>
<body>
	<table>
			<tr>
				<td width="80%">
					<div class="menubar">
						<ul>
							<a href="laxcen.do"><li><spring:message code="menu1"></spring:message></li></a>
							<a href="company.do"><li><spring:message code="menu2"></spring:message></li></a>
							<a href="media.do"><li><spring:message code="menu3"></spring:message></li></a>
							<a href="products.do"><li><spring:message code="menu4"></spring:message></li></a>
							<a href="solutions.do"><li><spring:message code="menu5"></spring:message></li></a>
							<a href="contactus.do"><li><spring:message code="menu6"></spring:message></li></a>
						</ul>
					</div>
				</td>
				<td width="20%">
					<div class="lang right">
						<%-- <a href="#"><spring:message code="language.choice"></spring:message></a> --%>
						<jsp:include page="/siteLanguage.do"></jsp:include>
					</div>
				</td>
			</tr>
		</table>
	</body>
</html>