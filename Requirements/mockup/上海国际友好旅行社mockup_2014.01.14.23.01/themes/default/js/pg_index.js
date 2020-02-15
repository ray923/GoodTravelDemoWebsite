$(function(){
	//首页顶部大banner滚动
	UI.Xslider(".topbanner",{
		autoScroll:5000,
		speed:800,
		dir:"F",
		showNav:".nav a"
	});
	
	//首页产品展示滚动
	UI.Xslider(".proSlider",{
		loop:"cycle",
		showNav:".dotnav a"
	});
	
	
});