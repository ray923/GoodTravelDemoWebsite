<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>
<%@ Register Src="UserControls/PageHeader.ascx" TagPrefix="GW" TagName="PageHeader" %>
<%@ Register Src="UserControls/PageFooter.ascx" TagPrefix="GW" TagName="PageFooter" %>

<!doctype html>
<html lang="zh-ch">
<head>
<meta charset="gb2312" />
<title>上海国际友好旅行社 - 关于我们</title>
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
<link href="themes/default/css/global.css" type="text/css" rel="stylesheet" />
<link href="themes/default/css/about.css" type="text/css" rel="stylesheet" />
</head>
<GW:PageHeader ID="PageHeader" runat="server" />

<div id="main">
	<div class="crumb">
    	<div class="wraper">当前位置：<a href="Default.aspx">首页</a><b></b><strong>关于我们</strong></div>
    </div>
	<div class="wraper">
    	<div class="banner block mb15">
        	<img src="themes/default/img/banner_aboutus.jpg" width="990" />
        </div>
        <div class="pg_about cls">
            <div class="main">
            	<div class="aside">
                	<ul class="sidemenu">
                	    <asp:Repeater ID="rptDepartmentName" OnItemDataBound="rptDepartmentName_ItemDataBound" runat="server">
                	        <ItemTemplate>
                               	<li><a class="ribbon_<asp:Literal ID='ltIndex' runat='server'></asp:Literal> ie6png" href="javascript:void(0);"><asp:Literal ID="ltDepName" runat="server"></asp:Literal></a></li>
                	        </ItemTemplate>
                	    </asp:Repeater>
                    </ul>
                </div>
                
                <asp:Repeater ID="rptDepartment" OnItemDataBound="rptDepartment_ItemDataBound" runat="server">
                    <ItemTemplate>
                        <div class="article" style="<asp:Literal ID='ltdisplay' runat='server'></asp:Literal>">
                	        <h1 class="main_tit"><asp:Literal ID="ltDepartName" runat="server"></asp:Literal></h1>
                	        <div class="section">
                    	        <asp:Literal ID="ltDepartContent" runat="server"></asp:Literal>
                            </div>
            	        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
	</div>
</div>

<GW:PageFooter ID="PageFooter" runat="server" />

<script type="text/javascript" src="themes/default/js/jquery-1.6.2.min.js" ></script>
<script type="text/javascript" src="themes/default/js/ui.base.js" ></script>
<script type="text/javascript" src="themes/default/js/ui.Xslider.js" ></script>

<script type="text/javascript" src="themes/default/js/pg_about.js" ></script>
<!--[if IE 6]>
<script type="text/javascript" src="themes/default/js/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>
    DD_belatedPNG.fix('.ie6png');
</script>
<![endif]-->
</body>
</html>
