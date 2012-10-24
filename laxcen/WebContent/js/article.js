$(document).ready(function(){
	$(".blog").find(".blog_content").each(function(){
		$(this).hide();
	});
	
	$(".blog").find(".blog_body").each(function(index){
		$(this).find(".blog_simple").click(function(){
			if($(this).parent().find(".blog_content").is(':visible')){
				$(this).parent().find(".blog_content").slideUp("slow");
			}else{
				$(this).parent().find(".blog_content").slideDown("slow");
			}
		});
	});

});