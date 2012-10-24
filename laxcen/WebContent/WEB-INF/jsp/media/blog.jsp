<%@page import="java.util.List"%>
<%@page import="com.laxcen.model.Article"%>
<script src="js/article.js"></script>
<div class="blog left">
	This page is under construction...
	<% List<Article> list = (List<Article>)request.getAttribute("articles");
	int size = list.size();
	for(Article item: list){
	%>
	<div class="blog_body">
		<div class="blog_simple">
			<H2><%=item.getTitle()%></H2>
			<p> <%=item.getSummary()%></p>
		</div>
		<div class="blog_content">
			<p><%=item.getContent()%></p>
		</div>
	</div>
	<%}%>
</div>