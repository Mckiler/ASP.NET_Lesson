using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _7_Validation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        if (Page.IsValid)
        {
            Label1.Text = $"Name : {txtName.Text}</br>";
            Label1.Text += "  Correct!!!";
        }
    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (!FileUpload1.HasFile)
        {
            CustomValidator1.ErrorMessage = "Please Insert Jpeg File";
            args.IsValid = false;
        }
        else if (FileUpload1.PostedFile.ContentType != "image/jpeg")
        {
            CustomValidator1.ErrorMessage = "Only Jpeg File";
            args.IsValid = false;
        }
        else
        {
            args.IsValid = true;
        }
    }
}