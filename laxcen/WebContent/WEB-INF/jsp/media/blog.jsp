<%@page import="java.util.List"%>
<%@page import="com.laxcen.model.Article"%>
<div class="blog left underConstruction">
	This page is under construction...
	<% List<Article> list = (List<Article>)request.getAttribute("articles");
	int size = list.size();
	for(Article item: list){
	%>
	<H2><%=item.getTitle()%></H2>
	<p><%=item.getSummary()%></p>
	<p><%=item.getContent()%></p>
	<%}%>
</div>