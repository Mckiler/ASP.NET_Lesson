using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _10_WebUserControl : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)//เฉพาะ Load หนแรก
        {
            ProfileControl.Name = "Adam Smith";
            ProfileControl.Email = "abc@xxx.com";
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Label1.Text = $"Name : { ProfileControl.Name}</br>";
        Label1.Text += $"Email : { ProfileControl.Email}</br>";
    }
}