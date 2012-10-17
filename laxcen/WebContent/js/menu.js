$(document).ready(function(){
	$(".submenubar").find("li").each(function(){
		$(this).hover(function(){$(this).addClass("submenuhighlight");$(this).find("a").addClass("submenuhighlight");});
		$(this).mouseleave(function(){$(this).removeClass("submenuhighlight");$(this).find("a").removeClass("submenuhighlight");});
	});
});