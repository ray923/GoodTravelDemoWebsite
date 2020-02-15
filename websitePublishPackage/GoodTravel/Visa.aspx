<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Visa.aspx.cs" Inherits="Visa" %>
<%@ Register Src="UserControls/PageHeader.ascx" TagPrefix="GW" TagName="PageHeader" %>
<%@ Register Src="UserControls/PageFooter.ascx" TagPrefix="GW" TagName="PageFooter" %>

<!doctype html>
<html lang="zh-ch">
<head>
<meta charset="gb2312" />
<title>上海国际友好旅行社 - 签证业务</title>
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
<link href="themes/default/css/global.css" type="text/css" rel="stylesheet" />
<link href="themes/default/css/visa.css" type="text/css" rel="stylesheet" />
</head>
<GW:PageHeader ID="PageHeader" runat="server" />

<div id="main">
	<div class="crumb">
    	<div class="wraper">当前位置：<a href="Default.aspx">首页</a><b></b><strong>签证业务</strong></div>
    </div>
	<div class="wraper">
    	<div class="banner block mb15">
        	<img src="themes/default/img/banner_visa.jpg" width="990" />
        </div>
        <div class="pg_visa cls">
            <div class="main">
            	<div class="article">
                	<h1 class="main_tit">签证业务</h1>
                	<div class="section">
                    	<p>专业团队为您提供一站式各国签证服务。</p>
           	            <p>&nbsp;</p>
                        <p>赴日个人旅游签证</p>
                        <p>    拥有专业的日本送签资质（见日领馆网站），近乎100%的高出签率。</p>
                        <p>    日本单次个人签证：600元</p>
                        <p>    日本三年多次签证：1200元</p>
                        <p>    提供机票及酒店代订服务。</p>
                        <p>    统一办理银行第三方担保，无须任何现金保证金。</p>
                        <p>    美国签证、澳洲签证代为预约、填表、翻译、全套资料、制作行程、酒店预订单、机票预订单，提供优质专业的签证申请服务，专业团队进行资料审核。</p>
                        <p>    详情咨询：021-62493866，021-32140208</p>
                        <div class="visa_piclist cls">
                        	<ul class="cls">
                        		<li><img src="themes/default/img/visa_pic_US.jpg" /><p>美 国</p></li>
                                <li><img src="themes/default/img/visa_pic_AUS.jpg" /><p>澳大利亚</p></li>
                                <li><img src="themes/default/img/visa_pic_japan.jpg" /><p>日 本</p></li>
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

<!--[if IE 6]>
<script type="text/javascript" src="themes/default/js/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>
    DD_belatedPNG.fix('.ie6png');
</script>
<![endif]-->
</body>
</html>