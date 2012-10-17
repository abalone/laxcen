$(document).ready(function(){

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