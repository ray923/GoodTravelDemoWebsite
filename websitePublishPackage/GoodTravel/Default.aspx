<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register Src="UserControls/PageHeader.ascx" TagPrefix="GW" TagName="PageHeader" %>
<%@ Register Src="UserControls/PageFooter.ascx" TagPrefix="GW" TagName="PageFooter" %>

<!doctype html>
<html lang="zh-ch">
<head>
<meta charset="gb2312" />
<title>上海国际友好旅行社 - 首页</title>
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
<link href="themes/default/css/global.css" type="text/css" rel="stylesheet" />
<link href="themes/default/css/index.css" type="text/css" rel="stylesheet" />
</head>

<GW:PageHeader ID="PageHeader" runat="server" />

<div id="main">
	<div class="wraper">
		<div class="section1">
			<div class="street1">
	           <div class="topbanner">
	                	<ul>
	                	    <asp:Repeater ID="rptHomePage11" OnItemDataBound="rptHomePage11_ItemDataBound" runat="server">
                                <ItemTemplate><asp:Literal ID="ltBannerContent" runat="server"></asp:Literal></ItemTemplate>
                            </asp:Repeater>
	                    </ul>
	                    <div class="nav">
	                        <asp:Repeater ID="rptHomePage11Index" OnItemDataBound="rptHomePage11Index_ItemDataBound" runat="server">
                                <ItemTemplate><asp:Literal ID="ltIndex" runat="server"></asp:Literal></ItemTemplate>
                            </asp:Repeater>
	                    	
	                    </div>
	                </div>
			</div>
			
        </div>
		
		<div class="section2 cls mt15">
			<div class="col_190 fl">
            	<div class="box">
                	<h3 class="hd hd_green"><a class="hd_link" href="###">公司资质</a></h3>
                    <div class="bd">
                    	<div class="product_show">
                        	<div class="proSlider">
                                <ul class="mover cls">
                                    <li>
                                    	<p class="img"><a href="###"><img width="160" height="160" src="<%=CompanyQualityPic %>" alt="" /></a></p>
                                        <p class="intro"><a href="###"><%=CompanyQualityBrief %></a></p>
                                    </li>
                                </ul>
                            </div>
                    	</div>
                    </div>
                </div>
            	<div class="box mt15">
                	<h3 class="hd hd_green"><a class="hd_link" href="###">产品介绍</a></h3>
                    <div class="bd">
                    	<div class="product_show">
                        	<div class="proSlider">
                                <ul class="mover cls">
                                    <asp:Repeater ID="rptTravelProductList" OnItemDataBound = "rptTravelProductList_OnItemDataBound" runat="server">
                                        <ItemTemplate>
                                            <li>
                                                <p class="img"><asp:Literal ID="ltProListImg" runat="server"></asp:Literal></p>
                                                <p class="intro"><asp:Literal ID="ltProListText" runat="server"></asp:Literal></p>
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                                <div class="abtns">
                                	<a class="abtn aleft" href="javascript:void(0);">&lt;</a>
                                	<a class="abtn aright" href="javascript:void(0);">&gt;</a>
                                </div>
                            </div>
                    	</div>
                    </div>
                </div>
            </div>
            
            <div class="col_790 fr">
            	<div class="box">
            		<h3 class="hd hd_orange"><span class="fr"><%--<a class="linkMore" href="###">更多资讯&gt;&gt;</a>--%></span>新闻资讯</h3>
                    <div class="bd">
                    	<div class="newslist">
                        	<ul class="list cls">
                        	    <asp:Repeater ID="rptNewsList" OnItemDataBound="rptNewsList_rptNewsList" runat="server" >
                        	        <ItemTemplate>
                        	            <li><p><asp:Literal ID="ltNewsTitle" runat="server"></asp:Literal></p></li>
                        	        </ItemTemplate>
                        	    </asp:Repeater>
                            </ul>
                    	</div>
                    </div>
            	</div>
            
		
                <div class="box mt15">
            		<h3 class="hd hd_orange"><span class="fr"><a class="linkMore" href="AboutUs.aspx">查看全部&gt;&gt;</a></span>公司简介</h3>
                    <div class="bd">
                    	<div class="company_intro cls">
                        	<p class="pic"><img src="<%=CompanyBriefPic %>" /></p>
                        	<asp:Literal ID="ltCompanyBrief" runat="server"></asp:Literal>
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

<script type="text/javascript" src="themes/default/js/pg_index.js" ></script>
<!--[if IE 6]>
<script type="text/javascript" src="themes/default/js/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>
    DD_belatedPNG.fix('.ie6png');
</script>
<![endif]-->
</body>
</html>