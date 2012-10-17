$(document).ready(function(){

	$(".menubar").find("li").eq(menuId-1).addClass("on").siblings().removeClass("on");
	
	$(".menubar").find("li").each(function(){
		$(this).hover(function(){$(this).addClass("menuhighlight");});
		$(this).mouseleave(function(){$(this).removeClass("menuhighlight");});
	});
	
	$(".submenubar").find("li").each(function(){
		$(this).hover(function(){$(this).addClass("submenuhighlight");});
		$(this).mouseleave(function(){$(this).removeClass("submenuhighlight");});
	});
});