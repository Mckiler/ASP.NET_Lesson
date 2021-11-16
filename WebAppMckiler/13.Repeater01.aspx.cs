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


public partial class _13_Repeater01 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //สร้าง Connection
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Northwind"].ConnectionString);

        //เขียน Code Query รอไว้
        String sql = "select *,UnitPrice*30 as UnitPrice_Baht from products";

        //เขียน SqlCommand รอไว้
        SqlCommand com = new SqlCommand(sql, conn);

        //ใช้ Execute Reader
        SqlDataReader dr;

        conn.Open();  // เปิด Connection
        dr = com.ExecuteReader(); //สั่ง Reader

        // dr ผูกกับ Repeater
        Repeater1.DataSource = dr;
        Repeater1.DataBind();
        conn.Close();

        ///
        /// DataList
        /// 
        //เขียน SqlCommand รอไว้
        SqlDataAdapter da = new SqlDataAdapter(sql, conn);
        DataSet ds = new DataSet(); //เขียน SqlCommand Dis-connection รอไว้
        da.Fill(ds); // SqlDataAdapter ประมวลผลไปเก็บใน(Fill) DataSet
        DataList1.DataSource = ds.Tables[0];
        DataList1.DataBind();
    }
}