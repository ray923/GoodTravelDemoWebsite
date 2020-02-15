using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class ContactUs : System.Web.UI.Page
{
    private string path;

    protected void Page_Load(object sender, EventArgs e)
    {
        this.PageHeader.ContactUsStyle= "now";

        string name = this.Request.QueryString["name"];
        string phone = this.Request.QueryString["phone"];
        string email = this.Request.QueryString["email"];
        string content = this.Request.QueryString["content"];

        if (name != null && phone != null && email != null && content != null && name != "" && phone != "" && email != "" && content != "")
        {
            string xmlpath = ConfigurationManager.AppSettings["XmlPath"];
            path = "D:\\" + xmlpath + "\\App_Data\\UserMessage.xml";
            UserMessage um = new UserMessage();
            um.UserName = name;
            um.UserPhone = phone;
            um.UserEmail = email;
            um.Message = content;
            RecordUserMessage(um);
        }

    }

    public void RecordUserMessage(UserMessage um)
    {
        XMLDataHelper xmlHelper = new XMLDataHelper();
        xmlHelper.RecordUserMessage(um, path);
    }
}
