<%@ Control Language="C#" AutoEventWireup="true" CodeFile="PageHeader.ascx.cs" Inherits="UserControls_PageHeader" %>
<!--[if lt IE 7]><body class="ie6"><![endif]--><!--[if IE 7]><body class="ie7"><![endif]--><!--[if IE 8]><body class="ie8"><![endif]--><!--[if IE 9]><body class="ie9"><![endif]--><!--[if !IE]><!--><body><!--<![endif]-->
<div id="header">
	<div class="wraper">
    	<a href="Default.aspx" class="logo inblock">上海国际友好旅行社 Shanghai International Goodwill Travels</a>
        <div class="slogan">一切为了您美好的旅行</div>
        <div class=""></div>
    </div>
</div>
<div id="menu" class="ie6png">
    <div class="wraper">
        <div class="navigation">
            <ul>
                <li class="<%=HomePageStyle %>"><a href="Default.aspx" class="item"><span>首 页</span></a></li>
                <li class="<%=AboutUsStyle %>"><a href="AboutUs.aspx" class="item"><span>关于我们</span></a></li>
                <li class="<%=ProductListStyle %>"><a href="ProductList.aspx" class="item"><span>旅行产品</span></a></li>
                <li class="<%=VisaStyle %>"><a href="Visa.aspx" class="item"><span>签证业务</span></a></li>
                <li class="<%=RoomBookStyle %>"><a href="Booking.aspx" class="item"><span>订房中心</span></a></li>
                <li class="<%=ContactUsStyle %>"><a href="ContactUs.aspx" class="item"><span>联系我们</span></a></li>
            </ul>
        </div>
    </div>
</div>