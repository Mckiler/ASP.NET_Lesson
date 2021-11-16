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

public partial class _11_Connected : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
        //สร้าง Connection
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Northwind"].ConnectionString);

        //เขียน Code Query รอไว้
        String sql = "select * from products";

        //เขียน SqlCommand รอไว้
        SqlCommand com = new SqlCommand(sql, conn);

        //ใช้ Execute Reader
        SqlDataReader dr;

        conn.Open();  // เปิด Connection
        dr = com.ExecuteReader(); //สั่ง Reader


        while (dr.Read())
        {
            Label1.Text += $"{dr[0]} {dr[1]} {dr["UnitPrice"]}<br>";
        }
        conn.Close(); // ปิด Connection

        //ใช้ Execute Reader Scalar ข้อมูลเดียว
        sql = "select count(*) from products";
        com = new SqlCommand(sql, conn);
        conn.Open();
        int total = Convert.ToInt32(com.ExecuteScalar());
        conn.Close();

        Label1.Text += $"Total {total} Record(s)";

    }
}