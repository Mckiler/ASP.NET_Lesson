using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _5_Multiview01 : System.Web.UI.Page
{
    protected void Page_Init(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View1);
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnLinkedNext1_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
    }
    protected void btnLinkedBack2_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View1);
    }
    protected void btnLinkedNext2_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View3);
        Label1.Text = $"Name : {txtName.Text}<br>";
        Label1.Text += $"Email : {txtEmail.Text}<br>";
        Label1.Text += $"Address : {txtAddress.Text}<br>";
    }



    protected void btnLinkedBack3_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
    }
}