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
<title><spring:message code="menu1"></spring:message></title>
</head>
<c:set var="menuId" value="1" scope="request"/>
<body>
<div class="frame borderline">
	<div class="head sitefont">
		<jsp:include page="header.jsp"></jsp:include>
	</div>
	<div class="poster">
		<jsp:include page="poster.jsp"></jsp:include>
	</div>
	<div class="mainbody">
		<div class="top_products borderline contentfont">
			<table>
				<tr>
					<td width="33%">
						<div class="product">
							<jsp:include page="top_product.jsp">
								<jsp:param name="title" value="UFH Inlay"></jsp:param>
								<jsp:param name="desp" value="We offer a wide range of standard reference designs & custom inlay designs"></jsp:param>
								<jsp:param name="url" value="products.do?subM=1"></jsp:param>
								<jsp:param name="class" value="prod_img1"></jsp:param>
							</jsp:include>
						</div>
					</td>
					<td width="33%">
						<div class="product">
							<jsp:include page="top_product.jsp">
								<jsp:param name="title" value="HF Inlay"></jsp:param>
								<jsp:param name="desp" value="We has a full selection of HF Inlays for typical applications"></jsp:param>
								<jsp:param name="url" value="products.do?subM=2"></jsp:param>
								<jsp:param name="class" value="prod_img2"></jsp:param>
							</jsp:include>
						</div>
					</td>
					<td width="33%">
						<div class="product">
							<jsp:include page="top_product.jsp">
								<jsp:param name="title" value="NFC Inlay"></jsp:param>
								<jsp:param name="desp" value="View our NFC selections for your solutions"></jsp:param>
								<jsp:param name="url" value="products.do?subM=3"></jsp:param>
								<jsp:param name="class" value="prod_img3"></jsp:param>
							</jsp:include>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>
	<div class="tail sitefont">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</div>
</body>
</html>
