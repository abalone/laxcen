<script src="js/menu.js"></script>
<ul>
	<% String[] submenulist = (String[]) request.getAttribute("submenuList"); 
		String menuId = (String)request.getAttribute("menuId");
		String action = "";
		if(menuId.equals("1")){action="laxcen.do";}
		if(menuId.equals("2")){action="company.do";}
		if(menuId.equals("3")){action="media.do";}
		if(menuId.equals("4")){action="products.do";}
		if(menuId.equals("5")){action="solutions.do";}
		if(menuId.equals("6")){action="laxcen.do";}
	for(int i = 0; i<submenulist.length;i++){ 
		%>
		<li><a href="<%=action%>?subM=<%=(i+1)%>"><%=submenulist[i]%></a></li>
	<% } %>
</ul>