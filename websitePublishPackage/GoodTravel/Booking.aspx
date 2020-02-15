<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Booking.aspx.cs" Inherits="Booking" %>
<%@ Register Src="UserControls/PageHeader.ascx" TagPrefix="GW" TagName="PageHeader" %>
<%@ Register Src="UserControls/PageFooter.ascx" TagPrefix="GW" TagName="PageFooter" %>

<!doctype html>
<html lang="zh-ch">
<head>
<meta charset="gb2312" />
<title>上海国际友好旅行社 - 订房中心</title>
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
<link href="themes/default/css/global.css" type="text/css" rel="stylesheet" />
<link href="themes/default/css/booking.css" type="text/css" rel="stylesheet" />
</head>

<GW:PageHeader ID="PageHeader" runat="server" />

<div id="main">
	<div class="crumb">
    	<div class="wraper">当前位置：<a href="Default.aspx">首页</a><b></b><strong>订房中心</strong></div>
    </div>
	<div class="wraper">
    	<div class="banner block mb15">
        	<img src="themes/default/img/banner_booking.jpg" width="990" />
        </div>
        <div class="pg_booking cls">
            <div class="main">
            	<div class="article">
                	<h1 class="main_tit">订房中心</h1>
                	<div class="section">
                    	<p>多年来，我社订房部门凭借着公司支持，及依托衡山集团下属酒店的良好资源，其中囊括了：国际贵都、马勒别墅、上海大厦、朗廷扬子等；加之历来的良好信誉，在部门同仁的努力下，拥有了一批长期合作的中内外高端客户群。尤其是上海国际贵都大饭店，是我们一直以来最优质的合作伙伴也是本部的主推酒店。我们会不断本着为所有客户提供专业、高品质的酒店订房服务而努力。</p>
                    	<p><strong>我们的联系方式: 021-62494550   021-62481108   QQ 2910532756</strong></p>
                        <div class="hotel_piclist cls">
                        	<ul class="cls">
                        		<li><img src="themes/default/img/temp/booking_pic_1.jpg" /></li>
                                <li><img src="themes/default/img/temp/booking_pic_2.jpg" /></li>
                                <li><img src="themes/default/img/temp/booking_pic_3.jpg" /></li>
                                <li><img src="themes/default/img/temp/booking_pic_4.jpg" /></li>
                            </ul>
                        </div>
<%--                        <div class="mt40">
                        	<p><strong class="orange fz14">更有淘宝网店等着您！</strong></p>
                        	<a class="taobao_shop" href="http://shop103203803.taobao.com" target="">http://shop103203803.taobao.com</a></div>
--%>                    </div>
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