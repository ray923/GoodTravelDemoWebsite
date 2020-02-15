using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Xml;

public partial class _Default : System.Web.UI.Page
{
    private string companyQualityPic;
    private string companyQualityBrief;
    private string companyBriefPic;

    public string CompanyQualityPic
    {
        get { return this.companyQualityPic; }
    }
    public string CompanyQualityBrief
    {
        get { return this.companyQualityBrief; }
    }
    public string CompanyBriefPic
    {
        get { return this.companyBriefPic; }
    }


    protected void Page_Load(object sender, EventArgs e)
    {
        string xmlpath = ConfigurationManager.AppSettings["XmlPath"];
        string path = "D:\\" + xmlpath + "\\App_Data\\HomePageContent.xml";
        this.PageHeader.HomePageStyle = "now";
        XMLDataHelper xmlHelper = new XMLDataHelper();
        
        List<PositionInfo> homepage11List = new List<PositionInfo>();
        homepage11List = xmlHelper.getBannerDataList(path, "1");
        this.rptHomePage11.DataSource = homepage11List;
        this.rptHomePage11Index.DataSource = homepage11List;
        rptHomePage11.DataBind();
        rptHomePage11Index.DataBind();

        PositionInfo qualityInfo = new PositionInfo();
        qualityInfo = xmlHelper.getBannerData(path, "2");
        if (qualityInfo.Text != "")
        {
            this.companyQualityBrief = qualityInfo.Text;
        }
        if (qualityInfo.Resource != "")
        {
            this.companyQualityPic = qualityInfo.Resource;
        }

        List<PositionInfo> productList = new List<PositionInfo>();
        productList = xmlHelper.getBannerDataList(path, "3");
        this.rptTravelProductList.DataSource = productList;
        rptTravelProductList.DataBind();

        PositionInfo companyBrief = new PositionInfo();
        companyBrief = xmlHelper.getBannerData(path, "5");
        if (companyBrief.Resource != "")
        {
            this.companyBriefPic = companyBrief.Resource;
        }
        if (companyBrief.Text != "")
        {
            this.ltCompanyBrief.Text = companyBrief.Text;
        }

        List<PositionInfo> newsList = new List<PositionInfo>();
        newsList = xmlHelper.getBannerDataList(path, "4");
        this.rptNewsList.DataSource = newsList;
        rptNewsList.DataBind();
    }

    protected void rptHomePage11_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
        {
            PositionInfo info = e.Item.DataItem as PositionInfo;
            Literal content = e.Item.FindControl("ltBannerContent") as Literal;
            content.Text = string.Format("<li><a href=\"{0}\"><img width=\"990\" height=\"220\" src=\"{1}\" alt=\"\"/></a></li>", info.JumpUrl=="" ? "javascript:void(0);":info.JumpUrl, info.Resource);

        }
    }

    protected void rptHomePage11Index_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
        {
            PositionInfo info = e.Item.DataItem as PositionInfo;
            Literal content = e.Item.FindControl("ltIndex") as Literal;
            content.Text = string.Format("<a href=\"javascript:void(0);\" class=\"{1}\">{0}</a>", e.Item.ItemIndex + 1,e.Item.ItemIndex == 0 ? "current":"");

        }
    }

    protected void rptTravelProductList_OnItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
        {
            PositionInfo info = e.Item.DataItem as PositionInfo;
            Literal img = e.Item.FindControl("ltProListImg") as Literal;
            Literal text = e.Item.FindControl("ltProListText") as Literal;
            img.Text = string.Format("<a href=\"{0}\"><img width=\"160\" height=\"160\" src=\"{1}\" alt=\"\" /></a>", info.JumpUrl == "" ? "javascript:void(0);" : info.JumpUrl, info.Resource);
            text.Text = string.Format("<a href=\"{0}\">{1}</a>",info.JumpUrl == "" ? "javascript:void(0);" : info.JumpUrl,info.Text);

        }
    }

    protected void rptNewsList_rptNewsList(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
        {
            PositionInfo info = e.Item.DataItem as PositionInfo;
            Literal content = e.Item.FindControl("ltNewsTitle") as Literal;
            if (info.Text != "")
            {
                content.Text = string.Format("<a href=\"{0}\" target=\"_blank\">{1}</a>",info.JumpUrl,info.Text);
            }
        }
    }
}

