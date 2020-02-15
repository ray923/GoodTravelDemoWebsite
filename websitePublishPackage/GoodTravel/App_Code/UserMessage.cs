using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///UserMessage 的摘要说明
/// </summary>
public class UserMessage
{
    private string userName;
    private string userPhone;
    private string userEmail;
    private string message;
    private DateTime createTime;
    private string status;

    public string UserName
    {
        get { return this.userName; }
        set { this.userName = value; }
    }

    public string UserPhone
    {
        get { return this.userPhone; }
        set { this.userPhone = value; }
    }

    public string UserEmail
    {
        get { return this.userEmail; }
        set { this.userEmail = value; }
    }

    public string Message
    {
        get { return this.message; }
        set { this.message = value; }
    }

    public DateTime CreateTime
    {
        get { return this.createTime; }
        set { this.createTime = value; }
    }

    public string Status
    {
        get { return this.status; }
        set { this.status = value; }
    }

}
