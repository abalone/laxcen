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
<title>Laxcen</title>
</head>
<body>
<div class="frame borderline">
	<div class="head sitefont">
		<table>
			<tr>
				<td width="80%">
					<div class="menubar">
						<ul>
							<li><a href="#">Laxcen</a></li>
							<li><a href="#">Company</a></li>
							<li><a href="#">Media</a></li>
							<li><a href="#">Products</a></li>
							<li><a href="#">Solutions</a></li>
							<li><a href="#">Contact Us</a></li>
						</ul>
					</div>
				</td>
				<td width="20%">
					<div class="lang right sitefont">
						<a href="#"><spring:message code="language.choice"></spring:message></a>
					</div>
				</td>
			</tr>
		</table>
	</div>
	<div class="poster"></div>
	<div class="mainbody">
		<div class="top_products borderline contentfont">
			<table>
				<tr>
					<td width="33%">
						<div class="product">
							<div class="prod_img1">
								<div class="prod_title">Prod 1<br>prod1 is our product which has feature 1 and feature 2.</div>
								<div class="more_detail right"><a href="#">&gt;&gt;detail</a></div>
							</div>
						</div>
					</td>
					<td width="33%">
						<div class="product">
							<div class="prod_img2">
								<div class="prod_title">Prod 2<br>prod1 is our product which has feature 1 and feature 2.</div>
								<div class="more_detail right"><a href="#">&gt;&gt;detail</a></div>
							</div>
						</div>
					</td>
					<td width="33%">
						<div class="product">
							<div class="prod_img3">
								<div class="prod_title">Prod 3<br>prod1 is our product which has feature 1 and feature 2.</div>
								<div class="more_detail right"><a href="#">&gt;&gt;detail</a></div>
							</div>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>
	<div class="tail sitefont">
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
	</div>
</div>
</body>
</html>