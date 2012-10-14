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
	
	//slide picture
	
	var len = $(".num > li").length;
	var index = 0;
	var back = false;
	
	var MyTime = setInterval(function(){
		showImg(index);
		if(back){
			index--;
			if(index<0){
				index = index+2;
				back=false;
			}
		}else{
			index++;
			if(index==len){
				index = index-2;
				back=true;
			}
		}
	}, 4000);

	$(".num li").mouseover(function(){
		index = $(".num li").index(this);
		showImg(index);
	});
	
	$(".poster").hover(function(){
		if(MyTime){
			clearInterval(MyTime);
		}
	},function(){
			MyTime = setInterval(function(){
				showImg(index);
				if(back){
					index--;
					if(index<0){
						index = index+2;
						back=false;
					}
				}else{
					index++;
					if(index==len){
						index = index-2;
						back=true;
					}
				}
			}, 2000);
	});

	
	function showImg(i){

		$(".slider").stop(true, false).animate({left: -780*i}, 800);
		$(".num li").eq(i).addClass("on").siblings().removeClass("on");
	}
	
});