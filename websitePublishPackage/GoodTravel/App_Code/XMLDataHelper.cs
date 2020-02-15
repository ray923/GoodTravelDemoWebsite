using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml;


/// <summary>
///XMLDataHelper 的摘要说明
/// </summary>
public class XMLDataHelper
{
	
    public List<PositionInfo> getBannerDataList (string path,string positionID)
    {
        List<PositionInfo> infoList = new List<PositionInfo>();

        XmlDocument xmlDoc = new XmlDocument();
        xmlDoc.Load(path);

        foreach (XmlNode node in xmlDoc.ChildNodes)
        {
            if (node.Name == "NewDataSet")
            {
                foreach (XmlNode node1 in node.ChildNodes)
                {
                    if (node1.Name == "Position")
                    {
                        PositionInfo info = new PositionInfo();
                        foreach (XmlNode node2 in node1.ChildNodes)
                        {
                            switch (node2.Name)
                            {
                                case "ID":
                                    info.Id = node2.InnerText;
                                    break;
                                case "JumpUrl":
                                    info.JumpUrl = node2.InnerText;
                                    break;
                                case "Resource":
                                    info.Resource = node2.InnerText;
                                    break;
                                case "Content":
                                    info.Content = node2.InnerText;
                                    break;
                                case "Text":
                                    info.Text = node2.InnerText;
                                    break;
                                case "Status":
                                    info.Status = node2.InnerText;
                                    break;
                                case "Priority":
                                    info.Priority = node2.InnerText;
                                    break;
                                default:
                                    info.Content = node2.InnerText;
                                    break;
                            }
                        }
                        if (info.Status == "1" && info.Id == positionID)
                        {
                            infoList.Add(info);
                        }
                    }
                }
            }
        }

        if (infoList != null && infoList.Count > 0)
        {
            infoList.Sort(delegate(PositionInfo p1, PositionInfo p2)
            {
                return p1.Priority.CompareTo(p2.Priority);
            });
        }
        return infoList;
	}


    public PositionInfo getBannerData(string path, string positionID)
    {
        XmlDocument xmlDoc = new XmlDocument();
        PositionInfo info = new PositionInfo();
        xmlDoc.Load(path);

        foreach (XmlNode node in xmlDoc.ChildNodes)
        {

            if (node.Name == "NewDataSet")
            {
                foreach (XmlNode node1 in node.ChildNodes)
                {
                    if (node1.Name == "Position")
                    {
                        foreach (XmlNode node2 in node1.ChildNodes)
                        {
                            switch (node2.Name)
                            {
                                case "ID":
                                    info.Id = node2.InnerText;
                                    break;
                                case "JumpUrl":
                                    info.JumpUrl = node2.InnerText;
                                    break;
                                case "Resource":
                                    info.Resource = node2.InnerText;
                                    break;
                                case "Content":
                                    info.Content = node2.InnerText;
                                    break;
                                case "Text":
                                    info.Text = node2.InnerText;
                                    break;
                                case "Status":
                                    info.Status = node2.InnerText;
                                    break;
                                case "Priority":
                                    info.Priority = node2.InnerText;
                                    break;
                                default:
                                    info.Content = node2.InnerText;
                                    break;
                            }
                        }
                        if (info.Status == "1" && info.Id == positionID)
                        {
                            return info;
                        }
                        else
                        {
                            info = new PositionInfo();
                        }
                    }
                }
            }
        }
        return info;
    }

    public NewsInfo getNewsDetail(string path, string newsID)
    {
        XmlDocument xmlDoc = new XmlDocument();
        NewsInfo info = new NewsInfo();
        xmlDoc.Load(path);

        foreach (XmlNode node in xmlDoc.ChildNodes)
        {

            if (node.Name == "NewDataSet")
            {
                foreach (XmlNode node1 in node.ChildNodes)
                {
                    if (node1.Name == "Position")
                    {
                        foreach (XmlNode node2 in node1.ChildNodes)
                        {
                            switch (node2.Name)
                            {
                                case "ID":
                                    info.Id = node2.InnerText;
                                    break;
                                case "Title":
                                    info.Title = node2.InnerText;
                                    break;
                                case "Time":
                                    info.Time = node2.InnerText;
                                    break;
                                case "Resource":
                                    info.Resource = node2.InnerText;
                                    break;
                                case "ResourceTitle":
                                    info.ResourceTitle = node2.InnerText;
                                    break;
                                case "Content":
                                    info.Content = node2.InnerText;
                                    break;
                                case "Status":
                                    info.Status = node2.InnerText;
                                    break;
                                default:
                                    info.Content = node2.InnerText;
                                    break;
                            }
                        }
                        if (info.Status == "1" && info.Id == newsID)
                        {
                            return info;
                        }
                        else
                        {
                            info = new NewsInfo();
                        }
                    }
                }
            }
        }
        return info;
    }

    public List<NewsInfo> getNewsList(string path, string positionID)
    {
        List<NewsInfo> infoList = new List<NewsInfo>();

        XmlDocument xmlDoc = new XmlDocument();
        xmlDoc.Load(path);

        foreach (XmlNode node in xmlDoc.ChildNodes)
        {
            if (node.Name == "NewDataSet")
            {
                foreach (XmlNode node1 in node.ChildNodes)
                {
                    if (node1.Name == "Position")
                    {
                        NewsInfo info = new NewsInfo();
                        foreach (XmlNode node2 in node1.ChildNodes)
                        {
                            switch (node2.Name)
                            {
                                case "ID":
                                    info.Id = node2.InnerText;
                                    break;
                                case "Title":
                                    info.Title = node2.InnerText;
                                    break;
                                case "Time":
                                    info.Time = node2.InnerText;
                                    break;
                                case "Resource":
                                    info.Resource = node2.InnerText;
                                    break;
                                case "ResourceTitle":
                                    info.ResourceTitle = node2.InnerText;
                                    break;
                                case "Content":
                                    info.Content = node2.InnerText;
                                    break;
                                case "Status":
                                    info.Status = node2.InnerText;
                                    break;
                                default:
                                    info.Content = node2.InnerText;
                                    break;
                            }
                        }
                        if (info.Status == "1" && info.Id == positionID)
                        {
                            infoList.Add(info);
                        }
                    }
                }
            }
        }
        return infoList;
    }



    public ProductInfo getProductDetail(string path, string positionID)
    {
        XmlDocument xmlDoc = new XmlDocument();
        ProductInfo info = new ProductInfo();
        info.StepList = new List<string>();
        info.ImageList = new List<string>();
        xmlDoc.Load(path);

        foreach (XmlNode node in xmlDoc.ChildNodes)
        {

            if (node.Name == "NewDataSet")
            {
                foreach (XmlNode node1 in node.ChildNodes)
                {
                    if (node1.Name == "Position")
                    {
                        foreach (XmlNode node2 in node1.ChildNodes)
                        {
                            switch (node2.Name)
                            {
                                case "ID":
                                    info.Id = node2.InnerText;
                                    break;
                                case "ProductName":
                                    info.ProductName = node2.InnerText;
                                    break;
                                case "ProductSteps":
                                    foreach (XmlNode node3 in node2.ChildNodes)
                                    {
                                        if (node3.Name == "step")
                                        {
                                            info.StepList.Add(node3.InnerText);
                                        }
                                    }
                                    break;
                                case "ImageList":
                                    foreach (XmlNode node3 in node2.ChildNodes)
                                    {
                                        if (node3.Name == "img")
                                        {
                                            info.ImageList.Add(node3.InnerText);
                                        }
                                    }
                                    break;
                                case "Status":
                                    info.Status = node2.InnerText;
                                    break;
                                default:
                                    info.Id = node2.InnerText;
                                    break;
                            }
                        }
                        if (info.Status == "1" && info.Id == positionID)
                        {
                            return info;
                        }
                        else
                        {
                            info = new ProductInfo();
                            info.StepList = new List<string>();
                            info.ImageList = new List<string>();
                        }
                    }
                }
            }
        }
        return info;
    }

    public void RecordUserMessage(UserMessage content,string path)
    {
        XmlDocument xmlDoc = new XmlDocument();
        xmlDoc.Load(path);

        XmlNode xmldocSelect = xmlDoc.SelectSingleNode("NewDataSet");

        XmlElement el = xmlDoc.CreateElement("message"); //添加person节点

        XmlElement xesub1 = xmlDoc.CreateElement("UserName"); //添加person节点的里的节点
        xesub1.InnerText = content.UserName;//设置文本节点
        el.AppendChild(xesub1);

        XmlElement xesub2 = xmlDoc.CreateElement("UserPhone");
        xesub2.InnerText = content.UserPhone;//设置文本节点
        el.AppendChild(xesub2);

        XmlElement xesub3 = xmlDoc.CreateElement("UserEmail");
        xesub3.InnerText = content.UserEmail;//设置文本节点
        el.AppendChild(xesub3);

        XmlElement xesub4 = xmlDoc.CreateElement("Content");
        xesub4.InnerText = content.Message;//设置文本节点
        el.AppendChild(xesub4);

        XmlElement xesub5 = xmlDoc.CreateElement("CreateTime");
        xesub5.InnerText = DateTime.Now.ToString();//设置文本节点
        el.AppendChild(xesub5);

        XmlElement xesub6 = xmlDoc.CreateElement("Status");
        xesub6.InnerText = "1";//设置文本节点
        el.AppendChild(xesub6);

        xmldocSelect.AppendChild(el);
        xmlDoc.Save(path);

    }
}
