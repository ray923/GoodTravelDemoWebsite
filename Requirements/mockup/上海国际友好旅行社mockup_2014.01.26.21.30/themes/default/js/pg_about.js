$(function(){
	//ÇĞ»»²¿ÃÅÄÚÈİ
	$(".sidemenu li").click(function(){
		var i = $(this).index();
		$(".article").eq(i).show().siblings(".article").hide();
	});
	
	
})