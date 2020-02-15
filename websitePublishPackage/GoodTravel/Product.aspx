<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>
<%@ Register Src="UserControls/PageHeader.ascx" TagPrefix="GW" TagName="PageHeader" %>
<%@ Register Src="UserControls/PageFooter.ascx" TagPrefix="GW" TagName="PageFooter" %>

<!doctype html>
<html lang="zh-ch">
<head>
<meta charset="gb2312" />
<title>上海国际友好旅行社 - 产品详情</title>
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
<link href="themes/default/css/global.css" type="text/css" rel="stylesheet" />
<link href="themes/default/css/product.css" type="text/css" rel="stylesheet" />
</head>
<GW:PageHeader ID="PageHeader" runat="server" />

<div id="main">
	<div class="crumb">
    	<div class="wraper">当前位置：<a href="Default.aspx">首页</a><b></b><a href="ProductList.aspx">旅行产品</a><b></b><strong><%=ProductName %></strong></div>
    </div>
	<div class="wraper">
    	<div class="proinfo cls">
        	<h1 class="pro_tit"><%=ProductName %></h1>
            <div class="prozoom fr">
                <div class="bigimg">
                    <a href="javascript:void(0);" class="jqzoom"><img style="width:348px;height:261px;" src="<%=DefaultBigImage %>" alt="" /></a>
                </div>
                <div class="imgzoomlist mt10">
                    <div class="inner">
                        <ul class="cls">
                            <asp:Repeater ID="rptImageList" OnItemDataBound="rptImageList_ItemDataBound" runat="server">
                                <ItemTemplate>
                                    <li class="<asp:Literal ID='ltStyle' runat='server'></asp:Literal>"><a href="javascript:void(0);"  bigimg="<asp:Literal ID='ltBigImgUrl' runat='server'></asp:Literal>"><img src="<asp:Literal ID='ltImgUrl' runat='server'></asp:Literal>" alt="" /></a></li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                    <a href="javascript:void(0);" class="abtn aleft">左移</a>
                    <a href="javascript:void(0);" class="abtn aright">右移</a>
                </div>
            </div>
            
            <div class="prodetail">
            	<div class="prodetail_inner">
                    <asp:Repeater ID="rptProductDetail" OnItemDataBound="rptProductDetail_ItemDataBound" runat="server">
                        <ItemTemplate>
                            <asp:Literal ID="ltProductDetailContent" runat="server"></asp:Literal>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>

            
            
        </div>
	</div>
</div>

<GW:PageFooter ID="PageFooter" runat="server" />

<script type="text/javascript" src="themes/default/js/jquery-1.6.2.min.js" ></script>
<script type="text/javascript" src="themes/default/js/ui.base.js" ></script>
<script type="text/javascript" src="themes/default/js/ui.Xslider.js" ></script>

<script type="text/javascript" src="themes/default/js/pg_product.js" ></script>
<!--[if IE 6]>
<script type="text/javascript" src="themes/default/js/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>
    DD_belatedPNG.fix('.ie6png');
</script>
<![endif]-->
</body>
</html>