using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class AboutUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string xmlpath = ConfigurationManager.AppSettings["XmlPath"];
        string path = "D:\\" + xmlpath + "\\App_Data\\NewsList.xml";

        this.PageHeader.AboutUsStyle = "now";

        XMLDataHelper xmlHelper = new XMLDataHelper();
        List<NewsInfo> newsInfo = new List<NewsInfo>();
        newsInfo = xmlHelper.getNewsList(path, "D");

        this.rptDepartment.DataSource = newsInfo;
        this.rptDepartmentName.DataSource = newsInfo;
        this.rptDepartment.DataBind();
        this.rptDepartmentName.DataBind();
    }

    protected void rptDepartment_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
        {
            NewsInfo info = e.Item.DataItem as NewsInfo;
            Literal title = e.Item.FindControl("ltDepartName") as Literal;
            Literal content = e.Item.FindControl("ltDepartContent") as Literal;
            Literal index = e.Item.FindControl("ltdisplay") as Literal;

            title.Text = info.Title;
            content.Text = info.Content;
            index.Text = e.Item.ItemIndex == 0 ? "display:block;" : "display:none;";
        }
    }

    protected void rptDepartmentName_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
        {
            NewsInfo info = e.Item.DataItem as NewsInfo;
            Literal title = e.Item.FindControl("ltDepName") as Literal;
            Literal index = e.Item.FindControl("ltIndex") as Literal;

            title.Text = info.Title;
            index.Text = (e.Item.ItemIndex+1).ToString();
        }
    }
}
