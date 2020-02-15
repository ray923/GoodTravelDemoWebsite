<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewsDetail.aspx.cs" Inherits="NewsDetail" %>
<%@ Register Src="UserControls/PageHeader.ascx" TagPrefix="GW" TagName="PageHeader" %>
<%@ Register Src="UserControls/PageFooter.ascx" TagPrefix="GW" TagName="PageFooter" %>

<!doctype html>
<html lang="zh-ch">
<head>
<meta charset="gb2312" />
<title>上海国际友好旅行社 - 新闻详情</title>
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
<link href="themes/default/css/global.css" type="text/css" rel="stylesheet" />
<link href="themes/default/css/news.css" type="text/css" rel="stylesheet" />
</head>
<GW:PageHeader ID="PageHeader" runat="server" />

<div id="main">
	<div class="crumb">
    	<div class="wraper">当前位置：<a href="Default.aspx">首页</a><b></b><strong>新闻详情</strong></div>
    </div>
	<div class="wraper">
    	<div class="newsPage cls">
        	<h1 class="main_tit"><%=NewsTitle %></h1>
            <div class="post_date">发表于 <%=NewsTime %></div>
            <div class="article">
                
                <table border="0" cellpadding="10" align="center" bgcolor="#dddddd" style="margin-bottom:16px;">
                  <tr>
                    <td><img width="300" height="224" alt="<%=ResourceTitle %>" src="<%=Resource%>" title="<%=ResourceTitle %>" /></td>
                  </tr>
                  <tr>
                    <td align="center" style="padding-bottom:10px; font-size:14px;"><%=ResourceTitle %></td>
                  </tr>
                </table>

                <asp:Literal ID="ltNewsContent" runat="server"></asp:Literal>
                <div class="tc mt40"><a class="btn_back" href="Default.aspx">返 回</a></div>

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