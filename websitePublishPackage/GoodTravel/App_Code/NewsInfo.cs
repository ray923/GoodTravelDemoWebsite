using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///NewsInfo 新闻内容
/// </summary>
public class NewsInfo
{
	private string id;
    private string title;
    private string time;
    private string resource;
    private string resourceTitle;
    private string content;
    private string status;

    public string Id
    {
        get { return this.id; }
        set { this.id = value; }
    }

    public string Title
    {
        get { return this.title; }
        set { this.title = value; }
    }

    public string Time
    {
        get { return this.time; }
        set { this.time = value; }
    }

    public string Resource
    {
        get { return this.resource; }
        set { this.resource = value; }
    }

    public string ResourceTitle
    {
        get { return this.resourceTitle; }
        set { this.resourceTitle = value; }
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
}
