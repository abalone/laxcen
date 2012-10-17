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
<title><%=(String)request.getAttribute("menu") %></title>
</head>
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
							<jsp:include page="top_product.jsp"></jsp:include>
						</div>
					</td>
					<td width="33%">
						<div class="product">
							<jsp:include page="top_product.jsp"></jsp:include>
						</div>
					</td>
					<td width="33%">
						<div class="product">
							<jsp:include page="top_product.jsp"></jsp:include>
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
