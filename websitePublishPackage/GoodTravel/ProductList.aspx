<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductList.aspx.cs" Inherits="ProductList" %>
<%@ Register Src="UserControls/PageHeader.ascx" TagPrefix="GW" TagName="PageHeader" %>
<%@ Register Src="UserControls/PageFooter.ascx" TagPrefix="GW" TagName="PageFooter" %>

<!doctype html>
<html lang="zh-ch">
<head>
<meta charset="gb2312" />
<title>上海国际友好旅行社 - 产品列表</title>
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
<link href="themes/default/css/global.css" type="text/css" rel="stylesheet" />
<link href="themes/default/css/ele_pagenav.css" type="text/css" rel="stylesheet" />
<link href="themes/default/css/productList.css" type="text/css" rel="stylesheet" />
</head>
<GW:PageHeader ID="PageHeader" runat="server" />

<div id="main">
	<div class="crumb">
    	<div class="wraper">当前位置：<a href="Defautl.aspx">首页</a><b></b> <strong>产品列表</strong></div>
    </div>
	<div class="wraper">
    	<div class="productList">
        	<div class="prolistwrap">
                <ul class="prolist">
                    <asp:Repeater ID="rptProductList" OnItemDataBound="rptProductList_ItemDataBound" runat="server">
                        <ItemTemplate>
                            <li>
                    	        <div class="colorBorder colorBorder_1"></div>
                                <p class="pic"><a href="javascript:void(0);"><img src="<asp:Literal ID='ltProductBriefResource' runat='server'></asp:Literal>" /></a></p>
                    	        <p class="tit"><a target="_blank" href="Product.aspx?ID=<asp:Literal ID='ltProductNo2' runat='server'></asp:Literal>"><asp:Literal ID="ltProductTitle" runat="server"></asp:Literal></a></p>
                                <p class="intro"><asp:Literal ID="ltProductBrief" runat="server"></asp:Literal></p>
                    	        <a class="btn_detail" target="_blank" href="Product.aspx?ID=<asp:Literal ID='ltProductNo' runat='server'></asp:Literal>">查看详细</a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
                
                <%--<div class="pageNavBot p25">
                    <div class="pageNav tr">
                        <!--<span class="pageNav_records">共<em class="gold">2999</em>件结果，1/24页：</span> -->
                        <a class="pre preDisable" href="javascript:void(0)"><span>上一页</span></a>
                        <a href="javascript:void(0)"><span>1</span></a>
                        <a class="curr" href="###"><span>2</span></a>
                        <a href="###"><span>3</span></a>
                        <a href="###"><span>4</span></a>
                        <a href="###"><span>5</span></a>
                        <a href="###"><span>6</span></a>
                        <a href="###"><span>7</span></a>
                        <a href="###"><span>8</span></a>
                        <ins>...</ins>
                        <a href="###"><span>24</span></a>
                        <a class="next" href="###"><span>下一页</span></a>
                        <span class="pageTotal">共<strong>24</strong>页</span>
                        <span class="pageTo">到第</span>
                        <input type="text" class="intxt hasDefaultText" value="1" tip="1" />
                        <span class="pageYe">页</span>
                        <a class="conf" href="###"><span>确定</span></a>
                    </div>
                </div>--%>
                
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