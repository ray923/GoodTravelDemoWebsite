<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>
<%@ Register Src="UserControls/PageHeader.ascx" TagPrefix="GW" TagName="PageHeader" %>
<%@ Register Src="UserControls/PageFooter.ascx" TagPrefix="GW" TagName="PageFooter" %>

<!doctype html>
<html lang="zh-ch">
<head>
<meta charset="gb2312" />
<title>上海国际友好旅行社 - 联系我们</title>
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
<link href="themes/default/css/global.css" type="text/css" rel="stylesheet" />
<link href="themes/default/css/contact.css" type="text/css" rel="stylesheet" />
</head>
<GW:PageHeader ID="PageHeader" runat="server" />

<div id="main">
	<div class="crumb">
    	<div class="wraper">当前位置：<a href="Default.aspx">首页</a><b></b><strong>联系我们</strong></div>
    </div>
	<div class="wraper">
    	<div class="banner block mb15">
        	<img src="themes/default/img/banner_contact.jpg" width="990" />
        </div>
        <div class="pg_contact cls">
        	<div class="aside fl">
            	<div class="sidemenu">
                    <h2>联系方式</h2>
                    <div class="section">
                    	<dl class="contact">
                        	<dt class="icon_addr"></dt>
                            <dd><strong class="tit">联系地址：</strong><p>上海市延安西路129号华侨大厦14F</p></dd>
                        </dl>
                        <div class="line"></div>
                        <dl class="contact">
                        	<dt class="icon_tel"></dt>
                             <dd><strong class="tit">QQ：</strong><p>2910532756</p></dd>
                        </dl>
                    </div>
                </div>
            	<div class="sidemenu mt15">
                    <h2><a href="###">留言箱</a></h2>
                    <div class="section">
                    	<dl class="guestbook">
                            <dd><a href="###"><strong class="tit">给我们留言</strong><sub>Guestbook</sub></a></dd>
                        </dl>
                        
                    </div>
                </div>
            </div>
            <div class="main fr">
            	<div class="article">
                	<h1 class="main_tit">给我们留言</h1>
                	<div class="section">
                    	<div class="fz14 orange fb">欢迎给我们留言，请您正确填写信息，以便我们与您联系，谢谢！</div>
                        <div class="formsub mt20">
                        	<ul>
                            	<li>
                                	<label class="label"><span class="red">*</span> 姓 名：</label>
                                    <input type="text" class="intxt inputhover" id="userName"/>
<%--                                    <span class="Validform_checktip Validform_wrong">请输入您的姓名</span>
--%>                                </li>
                                <li>
                                	<label class="label"><span class="red">*</span> 联系电话：</label>
                                    <input type="text" class="intxt inputhover hasDefaultText" placeholder="固定电话/手机号码" tip="固定电话/手机号码" value="" id="userPhone" />
<%--                                    <span class="Validform_checktip Validform_wrong">请输入您的联系电话</span>
--%>                                </li>
                                <li>
                                	<label class="label"><span class="red">*</span> Email地址：</label>
                                    <input type="text" class="intxt inputhover" id="userEmail"/>
<%--                                    <span class="Validform_checktip Validform_wrong">请输入您的Email地址</span>
--%>                                </li>
                                <li class="intxtAreaLine">
                                	<label class="label"><span class="red">*</span> 留言内容：</label>
                                    <textarea class="intxt intxtArea inputhover" id="userContent"></textarea>
<%--                                    <span class="Validform_checktip Validform_wrong">请输入您的留言内容</span>
--%>                                </li>
                                <li class="btnline">
                                	<a class="btn_sub" href="javascript:void(0);" onclick="recordMessage();">提 交</a>
                                </li>
                            </ul>
                        </div>
                    </div>
            	</div>
            </div>
        
        </div>
	</div>
</div>

<GW:PageFooter ID="PageFooter" runat="server" />

<script type="text/javascript" src="themes/default/js/jquery-1.6.2.min.js" ></script>
<script type="text/javascript" src="themes/default/js/ui.base.js" ></script>
<script type="text/javascript" src="themes/default/js/ui.Xslider.js" ></script>
<script type="text/javascript" language="jscript">
function recordMessage(){
    var userName = $("#userName").val();
    var userPhone = $("#userPhone").val();
    var userEmail = $("#userEmail").val();
    var content = $("#userContent").val();
    if (userName == "") {
        alert("请输入姓名");
        return;
    }
    if (userPhone == "") {
        alert("请输入联系电话");
        return;
    }
    if (userEmail == "") {
        alert("请输入电子邮件地址");
        return;
    }
    if (content == "") {
        alert("请输入留言内容");
        return;
    }
    var url = "http://www.sigt.com.cn/ContactUs.aspx?name=" + userName + "&phone=" + userPhone + "&email=" + userEmail + "&content=" + content;
    alert(url);
    $.ajax({
        url: url ,
        type: "GET",
        success: function(data) {
            alert("写入成功");
        }
    });
}
</script>
<!--[if IE 6]>
<script type="text/javascript" src="themes/default/js/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>
    DD_belatedPNG.fix('.ie6png');
</script>
<![endif]-->
</body>
</html>