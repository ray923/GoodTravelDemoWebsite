using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///页面位置内容
/// </summary>
public class PositionInfo
{
    private string id;
    private string jumpUrl;
    private string text;
    private string resource;
    private string content;
    private string status;
    private string priority;

    public string Id
    {
        get { return this.id; }
        set { this.id = value; }
    }

    public string JumpUrl
    {
        get { return this.jumpUrl; }
        set { this.jumpUrl = value; }
    }

    public string Text
    {
        get { return this.text; }
        set { this.text = value; }
    }

    public string Resource
    {
        get { return this.resource; }
        set { this.resource = value; }
    }

    public string Content
    {
        get { return this.content; }
        set { this.content = value; }
    }

    public string Status
    {
        get { return this.status; }
        set { this.status = value; }
    }

    public string Priority
    {
        get { return this.priority; }
        set { this.priority = value; }
    }
}
