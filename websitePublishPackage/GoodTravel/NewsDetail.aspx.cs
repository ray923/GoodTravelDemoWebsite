using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class NewsDetail : System.Web.UI.Page
{
    private string newsTitle;
    private string newsTime;
    private string resource;
    private string resourceTitle;

    public string NewsTitle
    {
        get { return this.newsTitle; }
    }

    public string NewsTime
    {
        get { return this.newsTime; }
    }

    public string Resource
    {
        get { return this.resource; }
    }

    public string ResourceTitle
    {
        get { return this.resourceTitle; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        string xmlpath = ConfigurationManager.AppSettings["XmlPath"];
        string path = "D:\\" + xmlpath + "\\App_Data\\NewsList.xml";
        string newsID = this.Request.QueryString["newsID"];
        
        XMLDataHelper xmlHelper = new XMLDataHelper();
        NewsInfo newsInfo = new NewsInfo();
        newsInfo = xmlHelper.getNewsDetail(path, newsID);

        if (newsInfo != null && newsInfo.Id != null)
        {
            this.newsTitle = newsInfo.Title;
            this.newsTime = newsInfo.Time;
            this.resourceTitle = newsInfo.ResourceTitle;
            this.resource = newsInfo.Resource;
            this.ltNewsContent.Text = newsInfo.Content;
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
    }
}
