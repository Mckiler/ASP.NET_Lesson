using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _6_Wizard01 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        Label1.Text = $"Name : {txtName.Text}<br>";
        Label1.Text += $"Email : {txtEmail.Text}<br>";
        Label1.Text += $"Address : {txtAddress.Text}<br>";
    }
}