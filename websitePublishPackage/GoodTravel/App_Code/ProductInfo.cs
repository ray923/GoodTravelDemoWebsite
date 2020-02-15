using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///产品详情
/// </summary>
public class ProductInfo
{
    private string id;
    private string productName;
    private List<string> stepList;
    private List<string> imageList;
    private string status;

    public string Id
    {
        get { return this.id; }
        set { this.id = value; }
    }

    public string ProductName
    {
        get { return this.productName; }
        set { this.productName = value; }
    }

    public List<string> StepList
    {
        get { return this.stepList; }
        set { this.stepList = value; }
    }

    public List<string> ImageList
    {
        get { return this.imageList; }
        set { this.imageList = value; }
    }

    public string Status
    {
        get { return this.status; }
        set { this.status = value; }
    }
}
