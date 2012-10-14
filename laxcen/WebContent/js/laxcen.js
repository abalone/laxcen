$(document).ready(function(){
	$(".menubar").find("li").each(function(){
		$(this).hover(function(){$(this).addClass("menuhighlight");$(this).find("a").addClass("menuhighlight");});
		$(this).mouseleave(function(){$(this).removeClass("menuhighlight");$(this).find("a").removeClass("menuhighlight");});
	});
	
	$(".lang").hover(function(){
		$(".lang").find("a").addClass("highlight");
	});
	
	$(".lang").mouseleave(function(){
		$(".lang").find("a").removeClass("highlight");
	});
	
	$(".more_detail").each(function(){
		$(this).hover(function(){$(this).find("a").addClass("highlight");});
	});
	
	$(".more_detail").each(function(){
		$(this).mouseleave(function(){$(this).find("a").removeClass("highlight");});
	});
});