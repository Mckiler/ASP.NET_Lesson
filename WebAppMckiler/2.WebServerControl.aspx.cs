using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _2_WebServerControl : System.Web.UI.Page
{
    protected void Page_Init(object sender, EventArgs e)
    {
        ddlProvince.Items.Add(new ListItem("Bangkok"));
        ddlProvince.Items.Add(new ListItem("Nontaburi"));
        ddlProvince.Items.Add(new ListItem("Samutsakorn"));

        String[] strHobby = { "Shopping", "Running", "Movies" };
        cblHobby.DataSource = strHobby;
        cblHobby.DataBind();

        List<String> strSocial = new List<string>
            {
                "Facebook","Youtube","Instragram","Twitter"
            };
        lbSocial.DataSource = strSocial;
        lbSocial.DataBind();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = $"Name : {txtName.Text}<br>";
        Label1.Text += $"Password : {txtPassword.Text}<br>";
        Label1.Text += $"Address : {txtAddress.Text}<br>";
        Label1.Text += $"Province : {ddlProvince.SelectedValue}<br>";
        Label1.Text += $"Gender : {rblGender.SelectedValue}<br>";
        Label1.Text += "Hobbies : ";
        String hobby = "";
        for (int i = 0; i < cblHobby.Items.Count; i++)
        {
            if (cblHobby.Items[i].Selected)
            {
                if (hobby == "")
                {
                    hobby = $"{cblHobby.Items[i].Value.ToString()}";
                }
                else
                {
                    hobby += $", {cblHobby.Items[i].Value.ToString()}";
                }
            }
        }

        Label1.Text += $"{hobby}<br>";
        

        Label1.Text += "Social : ";
        String Social = "";
        for (int i = 0; i < lbSocial.Items.Count; i++)
        {
            if (lbSocial.Items[i].Selected)
            {
                if (Social == "")
                {
                    Social = $"{lbSocial.Items[i].Value.ToString()}";
                }
                else
                {
                    Social += $", {lbSocial.Items[i].Value.ToString()}";
                }
            }
        }

        Label1.Text += $"{Social}<br>";
    }
}