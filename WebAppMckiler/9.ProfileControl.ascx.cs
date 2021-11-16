using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _9_ProfileControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string Name
    {
        get { return txtName.Text; }
        set { txtName.Text = value; }
    }
    public string Email
    {
        get { return txtEmail.Text; }
        set { txtEmail.Text = value; }
    }
}