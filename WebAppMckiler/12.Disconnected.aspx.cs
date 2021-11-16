using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Using ConnectionString Database
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
//Using ConnectionString Database

public partial class _12_Disconnected : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
        //สร้าง Connection
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Northwind"].ConnectionString);

        //เขียน Code Query รอไว้
        String sql = "select * from products";

        //เขียน SqlCommand รอไว้
        SqlDataAdapter da = new SqlDataAdapter(sql, conn);
        DataSet ds = new DataSet(); //เขียน SqlCommand Dis-connection รอไว้
        da.Fill(ds); // SqlDataAdapter ประมวลผลไปเก็บใน(Fill) DataSet

        DataTable dt = ds.Tables[0];

        for (int i = 0; i < dt.Rows.Count; i++)
        {
            Label1.Text += $"{dt.Rows[i][0]} {dt.Rows[i][1]} {dt.Rows[i]["UnitPrice"]}<br>";
        }
        Label1.Text += $"Total {dt.Rows.Count} Record(s)<br>";
    }
}