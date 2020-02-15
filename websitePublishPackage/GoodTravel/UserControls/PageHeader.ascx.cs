using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class UserControls_PageHeader : System.Web.UI.UserControl
{
    private string homePageStyle = "";
    private string aboutUsStyle = "";
    private string visaStyle ="";
    private string productListStyle = "";
    private string roomBookStyle = "";
    private string contactUsStyle = "";

    public string HeaderUrl
    {
        get { return ConfigurationManager.AppSettings["SiteRoute"] == null ? "javascript:void(0)" : ConfigurationManager.AppSettings["SiteRoute"]; }
    }

    public string HomePageStyle
    {
        get { return this.homePageStyle; }
        set { this.homePageStyle = value; }
    }

    public string AboutUsStyle
    {
        get { return this.aboutUsStyle; }
        set { this.aboutUsStyle = value; }
    }


    public string VisaStyle
    {
        get { return this.visaStyle; }
        set { this.visaStyle = value; }
    }

    public string ProductListStyle
    {
        get { return this.productListStyle; }
        set { this.productListStyle = value; }
    }

    public string RoomBookStyle
    {
        get { return this.roomBookStyle; }
        set { this.roomBookStyle = value; }
    }

    public string ContactUsStyle
    {
        get { return this.contactUsStyle; }
        set { this.contactUsStyle = value; }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
}
