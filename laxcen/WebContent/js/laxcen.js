$(document).ready(function(){

	$(".lang").hover(function(){
		$(".lang").find("a").addClass("highlight");
	});
	
	$(".lang").mouseleave(function(){
		$(".lang").find("a").removeClass("highlight");
	});
	
	$(".more_detail").find("a").each(function(){
		$(this).hover(function(){$(this).addClass("highlight");});
		$(this).mouseleave(function(){$(this).removeClass("highlight");});
	});
	
	$(".tail").find("a").each(function(){
		$(this).hover(function(){$(this).addClass("highlight");});
		$(this).mouseleave(function(){$(this).removeClass("highlight");});
	});
		
});