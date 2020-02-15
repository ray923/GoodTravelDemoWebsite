$(function(){
	//ÉÌÆ·ËõÂÔÍ¼¹ö¶¯
	var slider=UI.Xslider(".imgzoomlist",{
		numtoMove:1,
		stepOne:true,	
		start:2,
		viewedSize:267,
		unitLen:89,
		unitDisplayed:1,
		beforeStart:function(e){
			$(e.next).find("a").trigger("mouseenter");
		}
	});
	var bigimg=$(".bigimg").find("img");
	$(".imgzoomlist").find("li a").mouseenter(function(){
		var $this=$(this);
		bigimg.attr("src",$this.attr("bigimg"));
		bigimg.parent("a").attr("href",$this.attr("href"));
		$this.parent().addClass("current").siblings().removeClass("current");
		$(".imgzoomlist").data("curindex",~~$(this).parent().attr("index")+1);
	}).click(function(){	
		return false;	
	});
	
	
})