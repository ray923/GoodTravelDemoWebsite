/***
 * Global Popup Window & Layer
 * Version: 1.0.2
 * Last Update:		2013.10.23
 * Author:				Dan Yang
 * JQuery Requires: 	1.4.2+
 * Weibo:				http://weibo.com/divayang
 * Email:				diva83@163.com
 
 *---------------------------------------------------------------------------
 * Bugs Pending to Fix:
 	
	1��Bug ����: ��ε���$.ShowConfirm("***"��{settings})ʱ���״ε���ʱsettings�����Ի�һֱפ����������õ�settings�޷���Ч;
		
	   Bug ԭ��: �״ε��ú�if(confirmbox && confirmobj)���ʼ�ճ�������������ʱû�жԵ�������������³�ʼ��������ҳ���ò���һֱ����Ч;
	
	   Bug ��ѡ����İ�: 
	   	
			A: ��if else�������ɾ����ÿ�ε���ʱ������һ��ȫ�µ�html DOM����ȫ�����ɵ������������¼�Ҳ���������
			B: ΪPopWin�������init()������ÿ�ε���$.ShowConfirmʱʹ�����ò����Դ��ڶ������³�ʼ��
			C(Ŀǰʹ�õ���ʱ�������):
			
			���ȫ�����ñ��������������壩��_confirmSetting
		
 *---------------------------------------------------------------------------
 
 * Updates Logs:
 
 * Version: 1.0.2:
 	
	1��������overlay Bug: ������Ի����ڴ���ʱ���رմ���overlay��Ӧ����ʧ����Ϊֱ�����д��ڶ��رղ���ʧ��

 *---------------------------------------------------------------------------
	
 * Demo:
 
		////Demo 1�� һ��������ҳ���н�����һ�ζԻ����ڵ����
		
		��ʽ1�� 
		PopWin("#popID");
		
		��ʽ2��
		var myPopWin = document.getElementById("popWinID");
		PopWin(myPopWin,{...});
		
		
		////Demo 2�� һ��������ҳ���жԵ������ڽ��ж�β��������
		
		//���ù��캯���������صĶԻ����ڶ���ֵ������
		var myPopWin = PopWin(							
			"#popID",									//String | object�� ���������ָ���Ի����ڣ�������ID��Class��HTML DOM�����JQuery����
			{
				action:	"in" | "out",  					//String����ѡ�����ָ�����Ի������ڵ��ù��캯��ʱ���ɵ���|�������˲ο���obj.fn.popIn()|obj.fn.popOut()��������ͬʱʹ��
				animate:	false | true, 				//Boolean����ѡ��Ի������Ƿ��Զ�����ʽ����|����
				speed:	200,							//Number����ѡ��Ի����ڵ���|���ߵ��ٶ�
				overlay:	"#overlay" | overlay 		//String | object����ѡ�����ָ���ڲ㣬������ID��Class��HTML DOM�����JQuery����
				olSpeed:	200, 						//Number����ѡ��ڲ�ĳ���|��ʧ�Ķ����ٶȣ���������Ϊ0����
				olOpacity:	0.5,						//Float Number, ��ѡ�
				
				//����Ӳο�Start
				follow:		true | false | "auto"		//Boolean | "auto"����ѡ�����ָ���Ի������Ƿ����ҳ�������"auto"ʱ�Զ��жϵ��������������������ĸ߶���ʵ�ָ������
				referObj: 	"#referObj" | HTMLElement | JQuery Obj   //String | object����ѡ�����ָ���Ի����ڵ���λ�õĲο�����Ĭ��Ϊdocument.body
				offsetX:	0;							//Number����ѡ�����ָ���������ڵ�ˮƽλ�õ�ƫ����
				offsetY: 	0;							//Number����ѡ�����ָ���������ڵ���ֱλ�õ�ƫ����
				//����Ӳο�End
				
				beforeStart:	funciton(), 			//function����ѡ��ڵ��봰��ǰִ�еķ���
				callOnce:	funciton(), 				//function����ѡ����ڵ�һ�ε��봰�ڶ�����ɺ�ִ�еķ���
				callback:	funciton(), 				//function����ѡ���ÿ�ε��봰�ڶ�����ɺ�ִ�еķ���
				afterPopOut:	function()				//function����ѡ���ÿ�ε��ߴ��ڶ�����ɺ�ִ�еķ���
			}
		);
		
		//�Ի����ڶ�������ڲ�����
		myPopWin.fn.popIn(false); 	//�Ի����ڶ����� �޶�������
		myPopWin.fn.popOut(false); 	//�Ի����ڶ����� �޶�������
		myPopWin.fn.popIn(true); 	//�Ի����ڶ����� ��������
		myPopWin.fn.popOut(true); 	//�Ի����ڶ����� ��������
		
		
***/


/**	Global Method to fix Mask Overlay Height & Width **/
function fixMaskLayer(_o){
	//if IE6
	if(!-[1, ] && !window.XMLHttpRequest){
		var o = $(_o);
		var win = $(window);
		setTimeout(function(){
			o.css({width:win.width(),height:win.height()});
		},0);
	}
	
}

/**	Mousewheel Plugin **/
/* Copyright (c) 2006 Brandon Aaron (brandon.aaron@gmail.com || http://brandonaaron.net)
 * Dual licensed under the MIT (http://www.opensource.org/licenses/mit-license.php)
 * and GPL (http://www.opensource.org/licenses/gpl-license.php) licenses.
 * Thanks to: http://adomas.org/javascript-mouse-wheel/ for some pointers.
 * Thanks to: Mathias Bank(http://www.mathias-bank.de) for a scope bug fix.
 *
 * $LastChangedDate: 2007-12-20 09:02:08 -0600 (Thu, 20 Dec 2007) $
 * $Rev: 4265 $
 *
 * Version: 3.0
 * 
 * Requires: $ 1.2.2+
 */

(function($) {
$.event.special.mousewheel = {
	setup: function() {
		var handler = $.event.special.mousewheel.handler;
		
		// Fix pageX, pageY, clientX and clientY for mozilla
		if ( $.browser.mozilla )
			$(this).bind('mousemove.mousewheel', function(event) {
				$.data(this, 'mwcursorposdata', {
					pageX: event.pageX,
					pageY: event.pageY,
					clientX: event.clientX,
					clientY: event.clientY
				});
			});
	
		if ( this.addEventListener )
			this.addEventListener( ($.browser.mozilla ? 'DOMMouseScroll' : 'mousewheel'), handler, false);
		else
			this.onmousewheel = handler;
	},
	
	teardown: function() {
		var handler = $.event.special.mousewheel.handler;
		
		$(this).unbind('mousemove.mousewheel');
		
		if ( this.removeEventListener )
			this.removeEventListener( ($.browser.mozilla ? 'DOMMouseScroll' : 'mousewheel'), handler, false);
		else
			this.onmousewheel = function(){};
		
		$.removeData(this, 'mwcursorposdata');
	},
	
	handler: function(event) {
		var args = Array.prototype.slice.call( arguments, 1 );
		
		event = $.event.fix(event || window.event);
		// Get correct pageX, pageY, clientX and clientY for mozilla
		$.extend( event, $.data(this, 'mwcursorposdata') || {} );
		var delta = 0, returnValue = true;
		
		if ( event.wheelDelta ) delta = event.wheelDelta/120;
		if ( event.detail     ) delta = -event.detail/3;
		//if ( $.browser.opera  ) delta = -event.wheelDelta;
		
		event.data  = event.data || {};
		event.type  = "mousewheel";
		
		// Add delta to the front of the arguments
		args.unshift(delta);
		// Add event to the front of the arguments
		args.unshift(event);

		return $.event.handle.apply(this, args);
	}
};

$.fn.extend({
	mousewheel: function(fn) {
		return fn ? this.bind("mousewheel", fn) : this.trigger("mousewheel");
	},
	
	unmousewheel: function(fn) {
		return this.unbind("mousewheel", fn);
	}
});

})(jQuery);


/**	PopWin Constructor **/
function PopWin(_o, _settings){
	var self		= 	this;
	if (!(self instanceof PopWin)) {
        return new PopWin(_o, _settings);
    }
	
	var o 			= 	$(_o);
	var ol			= 	null;
	var settings	= 	{};
	var _default 	= 	{
			x			:	( $(window).width() - o.outerWidth() ) / 2,
			y			:	( $(window).height() - o.outerHeight() ) / 2,
			action		:	"in",
			animate		: 	false,
			speed		:	200,
			overlay		:	"#overlay",
			olSpeed		:	200,
			olOpacity	:	0.5,
			queue		: 	false,
			beforeStart	: 	function(){},
			callOnce	:  	function(){},
			callback	: 	function(){},
			afterPopOut	: 	function(){}
	}
	
	_default.y	= (document.documentElement.scrollTop ? document.documentElement.scrollTop : document.body.scrollTop) + (( _default.y > 0 ) ? _default.y : 0);
	
	if(_settings){ 
		for(var v in _settings){
			_default[v] = _settings[v];//Overwite defaults settings if customed parameters parsed in
		}
	}
	
	settings = _default;
	ol = $(settings.overlay);//Overlay DOM Obj
	
	//fix functions
	var fixFunc = {
		preventScroll : function(){
			return false;	
		},
		preventResize : function(){
			return false;	
		}	
		
	};
	
	//funciton init
	self.initDOM = function(){
		//overlay style
		if(ol.length==0){
			ol = $('<div id="overlay" style="position:fixed;top:0;left:0;right:0;bottom:0;"></div>');
			//if IE6
			if(!-[1, ] && !window.XMLHttpRequest){
				ol =  $('<div id="overlay" style="position:absolute;width:0;height:0;"><div style="position:absolute;width:100%;height:100%;background-color:transparent;z-index:1;"></div><iframe height="100%" frameborder="0" width="100%" scrolling="no" style="filter:alpha(opacity=0);background-color:transparent;"></iframe></div>');	
				var css = document.createElement("style");
				css.setAttribute("type","text/css");
				if(css.styleSheet){//For IE
					css.styleSheet.cssText = '#overlay,#overlay_transparent{top:expression(documentElement.scrollTop);left:expression(documentElement.scrollLeft);}';
				}
				document.getElementsByTagName("head")[0].appendChild(css);
			}
			$("body").append(ol);
			var olBgColor = ol.css("backgroundColor"),
				olBgImg = ol.css("backgroundImage"),
				olBgRpt = ol.css("backgroundRepeat"),
				olBgPst = ol.css("backgroundPosition");
			olBgColor = (olBgColor) ? olBgColor : "#000";
			olBgImg = (olBgImg) ? olBgImg : "url(base64:*.gif)";
			olBgRpt = (olBgRpt) ? olBgRpt : "repeat";
			olBgPst = (olBgPst) ? olBgPst : "left top";
			ol.css({
				backgroundColor: olBgColor,
				backgroundImage: olBgImg,	
				backgroundRepeat: olBgRpt,
				backgroundPosition: olBgPst
			});
		}
		else {
			//if IE6
			if(!-[1, ] && !window.XMLHttpRequest){
				//ol.css("left",0);
			}else{
				ol.css({				
					top: 0,	
					left: 0,
					right:0,
					bottom:0
				});	
			}
		}
		
		//Pop Window style
		if(o.length!=0){
			o.css({
				left : "50%",
				top	: 0 - o.outerHeight(),
				marginLeft : 0 - o.outerWidth() / 2
			});
			if(o.css("zIndex")=="auto" || o.css("zIndex")== 0){
				o.css("zIndex",1000);
			}
			ol.css("zIndex",parseInt(o.css("zIndex"))-1);
		}
		
		self.ol = ol;
		
		//System Evirement Vars
		/*if(typeof PopWinObj == 'undefined' ){
			PopWinObj = {};
			PopWinObj.Objects = [];
			PopWinObj.ObjDoms = [];
			PopWinObj.ObjDoms_Showed = [];
			PopWinObj.ObjDoms_Hidden = [];
			PopWinObj.ObjDoms_Overlay = [];
			PopWinObj.ObjOverlay_Showed = [];
			
			PopWinObj.O = PopWinObj.Objects;
			PopWinObj.OD = PopWinObj.ObjDoms;
			PopWinObj.ODS = PopWinObj.ObjDoms_Showed;
			PopWinObj.ODH = PopWinObj.ObjDoms_Hidden;
			PopWinObj.ODO = PopWinObj.ObjDoms_Overlay;
			PopWinObj.OOS = PopWinObj.ObjOverlay_Showed;
		}
		o.length!=0 ? PopWinObj.O.push(self) : '';
		o.length!=0 ? PopWinObj.OD.push(o) : '';
		o.length!=0 ? PopWinObj.ODO.push(self.ol) : '';*/
		
	};//init end
	
	self.initDOM();
	settings.callOnce.call(o,o,self);
	
	//function obj
	self.fn	= {
		popIn: 	
			function(_a, _fn,_data){
				if(o.attr("moving") == "1" ) return false;
				if(o.attr("showed") == "1" ) return false;
				
				settings.animate = (_a != undefined) ? _a : settings.animate;
				self.fn.specialFix("beforeIn");
				
				//Call Customized BeforeStart Function
				if(settings.beforeStart){
					settings.beforeStart.call(o,o,_data);		
				}
				
				//Overlay Control for Multiple PopWin Layers
				var olSpeed, olInitOpacity;
				if(self.ol.data('popShowedNum')>=1){
					self.ol.data('popShowedNum',~~self.ol.data('popShowedNum')+1)	
					olSpeed = 0;
					olInitOpacity = settings.olOpacity;
					console.log("1111");
				}else {
					self.ol.data('popShowedNum',1);
					olSpeed = settings.olSpeed;
					olInitOpacity = 0;
				}
				
				if(settings.animate == true) {
					self.fn.domMouseWheel(false);
					o.attr("moving","1");
					fixMaskLayer(ol);
					//ol.css({opacity : 0, display : "block"}).animate({opacity : settings.olOpacity},settings.olSpeed,
					ol.css({opacity : olInitOpacity, display : "block"}).animate({opacity : settings.olOpacity},olSpeed,
						function(){
							o.css("top",self.fn.getEndPos().inY).show().animate({
								top	 :	self.fn.getEndPos().y
							},{
								duration : 	settings.speed,
								queue	 :	settings.queue,
								complete : 	function(){
									//Call Customized Callback Function
									settings.callback.call(o,o);
									(typeof _fn == "function") ? _fn.call(o,o) : '';
									o.attr("showed","1");
									o.attr("moving","0");
									self.fn.addEvent();
									self.fn.domMouseWheel(true);
								}
							});	
						}
					);
				}
				else {
					ol.css({opacity : settings.olOpacity, display : "block"});
					fixMaskLayer(ol);
					o.show().css({
						top	 :	self.fn.getEndPos().y
					});
					//Call Customized BeforeStart Function
					settings.callback.call(o,o);
					(typeof _fn == "function") ? _fn.call(o,o) : '';	
					o.attr("showed","1");
					o.attr("moving","0");
					self.fn.addEvent();
				}	
			},//popIn End
		
		popOut	: 	
			function(_a, _fn){
				if(o.attr("moving") == "1" ) return false;
				if(o.attr("showed") != "1" ) return false;
				settings.animate = (_a != undefined) ? _a : settings.animate;
				
				if(settings.animate == true) {
					self.fn.domMouseWheel(false);
					o.attr("moving","1").show().animate({
						top	 :	self.fn.getEndPos().outY
					},{
						duration : 	settings.speed,
						queue	 :	settings.queue,
						complete : 	function(){
							//Call Customized Callback Function
							o.hide().attr("showed","0");
							o.attr("moving","0");
							//ol.fadeOut(settings.olSpeed);
							if(self.ol.data("popShowedNum")<=1){
								self.ol.fadeOut(settings.olSpeed).data("popShowedNum",0);
							}else {
								self.ol.data("popShowedNum",self.ol.data("popShowedNum")-1);
							}
							settings.afterPopOut.call(o,o);
							(typeof _fn == "function") ? _fn.call(o,o) : '';
							self.fn.specialFix("afterOut");
							self.fn.domMouseWheel(true);
						}
					});
				}
				else {
					o.show().css({
						top	 :	0 - self.fn.getEndPos().y,
						display: "none"
					});
					//Call Customized BeforeStart Function
					o.attr("showed","0");
					o.attr("moving","0");
					//ol.hide();
					if(self.ol.data("popShowedNum")<=1){
						self.ol.hide().data("popShowedNum",0);
					}else {
						self.ol.data("popShowedNum",self.ol.data("popShowedNum")-1);
					}
					settings.afterPopOut.call(o,o);
					(typeof _fn == "function") ? _fn.call(o,o) : '';
					self.fn.specialFix("afterOut");
				}	
			},//popOut end
		
		getEndPos :
			function(){
				var st = (document.documentElement.scrollTop ? document.documentElement.scrollTop : document.body.scrollTop);
				//var sl = (document.documentElement.scrollLeft ? document.documentElement.scrollLeft : document.body.scrollLeft);
				var win = $(window);
				var _y = ( win.height() - o.outerHeight() )/2;
				//var _x = ( win.width() - o.outerWidth() )/2;
				return {
					//x : sl + ((_x > 0 ) ? _x : 0),
					y : st + ((_y > 0 ) ? _y : 0),
					//curTop : st,
					inY : 0 - o.outerHeight() + st,
					outY : 0 - o.outerHeight() + st
				}
			},//getEndPos end
		
		addEvent ://events which runs after popWindow finishing Entering 
			function(){
				//When Scroll & Resize Window, Reposition the PopWindow
				$(window).bind("resize scroll",function(e){
					( e.type == "resize") && fixMaskLayer(ol);
					self.fn.rePosition();
				});
				
				//More Events could happen here....
				//.....
				
			},//addEvent End
				
		rePosition:
			function(_a){
				//if(o.attr("moving") == "1" ) return false;
				if(o.attr("showed") != "1" ) return false;
				settings.animate = (_a!=undefined) ? _a : settings.animate;
				if(settings.animate == true) {
					o.attr("moving","1");
					o.show().animate({
						top	 :	self.fn.getEndPos().y
					},{
						duration : 	200,
						queue	 :	settings.queue,
						complete : 	function(){
							o.attr("moving","0");
							self.fn.specialFix("onMoving");
						}
					});	
				}
				else {
					o.show().css({
						top	 :	self.fn.getEndPos().y
					});
					o.attr("moving","0");
					self.fn.specialFix("onMoving");
				}
				
			},//rePostion end
			
		domMouseWheel :
			function(_f){
				if(_f == false){
					$(window).bind("resize",fixFunc.preventResize);	
					$(document).bind("mousewheel",fixFunc.preventScroll);		
				}
				else {
					$(window).unbind("resize",fixFunc.preventResize);	
					$(document).unbind("mousewheel",fixFunc.preventScroll);	
				}
			},
		
		specialFix ://Special Fix Events which runs Before popIn, PopWin Moving and After popOut
			function(_f){
				//if IE
				if(!!window.ActiveXObject){
					if((_f == "beforeIn") || (_f == "onMoving")){
						var focusedInput = $("input:focus").not(o.find("input:focus"));//not support for jquery 1.4.2 and below
						if(focusedInput.length!==0){
							window.data_tempFocusInput = focusedInput;
							data_tempFocusInput.blur();
							window.data_bluredInput = window.data_tempFocusInput;
						}
					}
					else if(_f == "afterOut"){
						if(window.data_bluredInput){
							data_bluredInput.focus();
							window.data_tempFocusInput = null;	
							window.data_bluredInput = null;
						}
					}
				}
				
				//if IE6
				if(!-[1, ] && !window.XMLHttpRequest){
					if(_f == "beforeIn") {
						$("select").not(o.find("select")).css("visibility","hidden");	
					}
					else if(_f == "afterOut"){
						$("select").not(o.find("select")).css("visibility","visible");	
					}
					
					/*for(var i = 0, selects = document.getElementsByTagName("select"); i<selects.length; i++){
						selects[i].style.visibility = v;	
					}*/
					
				}
				
				//More Special Fix could happens here....
				//.....
				
			}// specialFix end
	}//fn end
	
	//Bind click Event to Close Icon
	o.find(".close").not("[data-popwin-bound=true]").bind("click",function(){
		self.fn.popOut(settings.animate);		
	}).attr("data-popwin-bound","true");
	
	if(_settings){
		//��ʼ������ʱ�����������������actionΪ"in"|"out"����ִ����Ӧ�ĵ���|�����Ķ���
		(_settings.action == "in") ? self.fn.popIn(_settings.animate) : "";
		(_settings.action == "out") ? self.fn.popOut(_settings.animate) : "";		
	}
	
	return self;
}


/** Simulate Window.alert�� Init Method **/
var initAlertBox=function(obj,sett){
	return PopWin(obj,{
		animate:true,
		olOpacity:0.5,
		callback:function(o){
			if(!-[1, ] && !window.XMLHttpRequest){
				try{
					DD_belatedPNG.fix('.ie6png2');
				}catch(e){}
			}
		},
		callOnce: function(o){
			//��ʼ����������ִ��һ�ε�����
			o.find(".btns .btn").click(function(){
				sett.callback.call(o,o,$(this));	
				(sett.preventClose !== true) && o.find(".Alert_close").trigger("click");
			})
			o.find(".iframe iframe").height(o.outerHeight(true));
		},
		beforeStart:function(o){
			sett.onStart.call(o,o);	
		},
		afterPopOut:function(o){
			sett.afterPopOut.call(o,o);
		}
	});
} 

$.Showmsg = function(msgHtml,settings){
	var alertbox = window["alertTemplate"];
	var alertobj = window["alertobj"];
	var btnsHtml;
	var maskIframe = "";
	var sett = $.extend({
		caption: "",
		preventClose:false,
		callback:function(){},
		onStart:function(){},
		afterPopOut:function(){}
	},settings);
	
	if(alertbox && alertobj){
		//$(".AlertBox").find(".Alert_info").empty();
	}
	else {
		maskIframe = (!-[1, ] && !window.XMLHttpRequest) ? '<div class="iframe"><iframe height="100%" frameborder="0" width="100%" scrolling="no"></iframe></div>' : '';
		btnsHtml = '<div class="btns tc"><a class="btn btn0" href="javascript:void(0)"><span>ȷ ��</span></a></div>';
		alertbox = $('<div id="AlertBox'+(new Date()).getTime()+'" class="AlertBox"><div class="Alert_title ie6png2">'+sett.caption+'<a href="javascript:void(0);" class="Alert_close close">��</a></div><div class="Alert_info ie6png2"><div class="msg_txt tc mb20"></div>'+btnsHtml+'</div>'+maskIframe+'</div>');
		window["alertTemplate"]=alertbox;
		$("body").append(alertbox);
		window["alertobj"]=initAlertBox(alertbox,sett);
		alertobj=window["alertobj"];
	}
	alertbox.find(".msg_txt").html(msgHtml);
	alertobj.fn.popIn();
}

/** Simulate Window.confirm�� Init Method **/
var initConfirmBox=function(obj,sett){
	return PopWin(obj,{
		animate:true,
		olOpacity:0.5,
		callback:function(o){
			if(!-[1, ] && !window.XMLHttpRequest){
				try{
					DD_belatedPNG.fix('.ie6png2');
				}catch(e){}
			}
		},
		callOnce: function(o){
			//��ʼ����������ִ��һ�ε�����
			o.find(".btns .btn0").click(function(){
				sett.callback.call(o,o,$(this));	
				(sett.preventClose !== true) && o.find(".Alert_close").trigger("click");
			})
			o.find(".btns .btn1").click(function(){
				sett.cancelCallback.call(o,o,$(this));
				o.find(".Alert_close").trigger("click");
			})
			o.find(".iframe iframe").height(o.outerHeight(true));
		},
		beforeStart:function(o){
			sett.onStart.call(o,o);	
		},
		afterPopOut:function(o){
			sett.afterPopOut.call(o,o);
		}
	});
} 

var _confirmSetting = { 
	caption: "", 
	preventClose: false, 
	callback: function() {}, 
	cancelCallback: function (){}, 
	onStart: function(){}, 
	afterPopOut: function() {} 
}; 
	
$.ShowConfirm = function(msgHtml,settings){	
	var confirmbox = window["confirmTemplate"];	
	var confirmobj = window["confirmobj"];
	var btnsHtml;
	var maskIframe = "";
	/*var sett = $.extend({
		caption: "",
		preventClose:false,
		callback:function(){},
		cancelCallback:function(){},
		onStart:function(){},
		afterPopOut:function(){}
	},settings);*/
	
	$.extend(_confirmSetting,settings);

	if(confirmbox && confirmobj){
		//$(".AlertBox").find(".Alert_info").empty();
	}
	else {
		maskIframe = (!-[1, ] && !window.XMLHttpRequest) ? '<div class="iframe"><iframe height="100%" frameborder="0" width="100%" scrolling="no"></iframe></div>' : '';
		btnsHtml = '<div class="btns tc"><a class="btn btn0 mr10" rel="0" href="javascript:void(0);"><span>ȷ ��</span></a><a class="btn btn1" rel="1" href="javascript:void(0);"><span>ȡ ��</span></a></div>';
		confirmbox = $('<div id="ConfirmBox'+(new Date()).getTime()+'" class="AlertBox"><div class="Alert_title ie6png2">'+_confirmSetting.caption+'<a href="javascript:void(0);" class="Alert_close close">��</a></div><div class="Alert_info ie6png2"><div class="msg_txt tc mb20"></div>'+btnsHtml+'</div>'+maskIframe+'</div>');
		window["confirmTemplate"]=confirmbox;
		$("body").append(confirmbox);
		window["confirmobj"]=initConfirmBox(confirmbox,_confirmSetting);
		confirmobj=window["confirmobj"];
	}
	confirmbox.find(".msg_txt").html(msgHtml);
	confirmobj.fn.popIn();
	
}