using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class ProductList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.PageHeader.ProductListStyle = "now";

        string xmlpath = ConfigurationManager.AppSettings["XmlPath"];
        string path = "D:\\" + xmlpath + "\\App_Data\\NewsList.xml";

        XMLDataHelper xmlHelper = new XMLDataHelper();
        List<NewsInfo> newsInfo = new List<NewsInfo>();
        newsInfo = xmlHelper.getNewsList(path, "PL");

        this.rptProductList.DataSource = newsInfo;
        this.rptProductList.DataBind();
    }

    protected void rptProductList_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
        {
            NewsInfo info = e.Item.DataItem as NewsInfo;
            Literal briefResource = e.Item.FindControl("ltProductBriefResource") as Literal;
            Literal title = e.Item.FindControl("ltProductTitle") as Literal;
            Literal content = e.Item.FindControl("ltProductBrief") as Literal;
            Literal index = e.Item.FindControl("ltProductNo") as Literal;
            Literal index2 = e.Item.FindControl("ltProductNo2") as Literal;

            briefResource.Text = info.Resource;
            title.Text = info.Title;
            content.Text = info.Content;
            index.Text = info.ResourceTitle;
            index2.Text = info.ResourceTitle;
        }
    }
}
