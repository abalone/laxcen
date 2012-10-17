$(document).ready(function(){
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
			}, 4000);
	});

	
	function showImg(i){

		$(".slider").stop(true, false).animate({left: -980*i}, 800);
		$(".num li").eq(i).addClass("on").siblings().removeClass("on");
	}
});