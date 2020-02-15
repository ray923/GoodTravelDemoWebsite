using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class Product : System.Web.UI.Page
{
    private string defaultBigImage;
    private string productName;
    
    public string DefaultBigImage
    {
        get { return this.defaultBigImage; }
    }

    public string ProductName
    {
        get { return this.productName; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        string xmlpath = ConfigurationManager.AppSettings["XmlPath"];
        string path = "D:\\" + xmlpath + "\\App_Data\\ProductDetail.xml";
        string productID = this.Request.QueryString["ID"];

        XMLDataHelper xmlHelper = new XMLDataHelper();
        ProductInfo productInfo = new ProductInfo();
        productInfo = xmlHelper.getProductDetail(path, productID);

        if (productInfo != null && productInfo.Id != null)
        {
            if (productInfo.ImageList != null & productInfo.ImageList.Count > 0)
            {
                this.defaultBigImage = productInfo.ImageList[0];
            }
            if (productInfo.ProductName != null && productInfo.ProductName != "")
            {
                this.productName = productInfo.ProductName;
            }
            this.rptProductDetail.DataSource = productInfo.StepList;
            this.rptImageList.DataSource = productInfo.ImageList;
            this.rptImageList.DataBind();
            this.rptProductDetail.DataBind();
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
    }

    protected void rptProductDetail_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
        {
            string info = e.Item.DataItem as string;
            Literal content = e.Item.FindControl("ltProductDetailContent") as Literal;

            if (info != null && info != "")
            {
                content.Text = info;
            }
        }
    }

    protected void rptImageList_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
        {
            string info = e.Item.DataItem as string;
            Literal style = e.Item.FindControl("ltStyle") as Literal;
            Literal bigImg = e.Item.FindControl("ltBigImgUrl") as Literal;
            Literal img = e.Item.FindControl("ltImgUrl") as Literal;

            if (e.Item.ItemIndex == 0)
            {
                style.Text = "current";
            }

            if (info != null && info != "")
            {
                bigImg.Text = info;
                img.Text = info;
            }
        }
    }
    
}
