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

public partial class _15_Gridview01_LINQ : System.Web.UI.Page
{
    // LINQ
    _15_2_NorthwindDataContext context = new _15_2_NorthwindDataContext();

    SqlConnection conn;
    String sql;

    protected void Page_Init(object sender, EventArgs e)
    {
        //สร้าง Connection
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Northwind"].ConnectionString);

        // LINQ
        //var data = from c in context.Categories select c; // SQL : select * 
        var data = from c in context.Categories select new { c.CategoryID, c.CategoryName }; // SQL : select * 

        ddlCategory.DataSource = data;
        ddlCategory.DataTextField = "categoryname";
        ddlCategory.DataValueField = "categoryid";

        ddlCategory.DataBind();
        conn.Close();


        /// 14.Gridview
        //String sql = "select categoryid,categoryname from categories"; 
        ////เขียน SqlCommand รอไว้
        //SqlCommand com = new SqlCommand(sql, conn);

        ////ใช้ Execute Reader
        //SqlDataReader dr;

        //conn.Open();  // เปิด Connection
        //dr = com.ExecuteReader(); //สั่ง Reader

        //// dr ผูกกับ DropDownListBox
        //ddlCategory.DataSource = dr; 
        //ddlCategory.DataTextField = "categoryname";
        //ddlCategory.DataValueField = "categoryid";

        //ddlCategory.DataBind();
        //conn.Close();


    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindData();
        }

    }
    private void BindData()
    {
        /// LINQ
        var data = from p in context.Products
                   where p.CategoryID == Convert.ToInt32(ddlCategory.SelectedValue)
                   orderby p.UnitPrice descending
                   select new { p.ProductID, p.ProductName, p.UnitPrice, UnitPrice_Baht = p.UnitPrice * 30 };

        GridView1.DataSource = data;
        GridView1.DataBind();

        // ตัวช่วยไม่ให้หัวตารางถูกไฮไลต์
        GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;



        ///// 14.Gridview
        ////เขียน Code Query รอไว้
        ////sql = "select ProductID,ProductName,UnitPrice,UnitPrice*30 as UnitPrice_Baht from products
        //sql = "select ProductID,ProductName,UnitPrice,UnitPrice*30 as UnitPrice_Baht from products where CategoryID=@CategoryID";

        //// เพิ่ม sqlCommand รับ  categoryid
        //SqlCommand com = new SqlCommand(sql, conn);
        //com.Parameters.Add("@CategoryID", SqlDbType.Int).Value = Convert.ToInt32(ddlCategory.SelectedValue);

        ////เขียน SqlCommand รอไว้
        //SqlDataAdapter da = new SqlDataAdapter(com);
        //DataSet ds = new DataSet(); //เขียน SqlCommand Dis-connection รอไว้
        //da.Fill(ds); // SqlDataAdapter ประมวลผลไปเก็บใน(Fill) DataSet

        //GridView1.DataSource = ds.Tables[0];
        //GridView1.DataBind();

        //// ตัวช่วยไม่ให้หัวตารางถูกไฮไลต์
        //GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

        GridView1.PageIndex = e.NewPageIndex;
        GridView1.EditIndex = -1; // ควร Cancel ก่อนเปลี่ยน Page
        BindData();

        DetailsView1.DataSource = null;
        DetailsView1.DataBind();
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        BindData();

        DetailsView1.DataSource = null;
        DetailsView1.DataBind();
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        BindData();

        DetailsView1.DataSource = null;
        DetailsView1.DataBind();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex][0]);
        String name = e.NewValues[0].ToString();
        decimal price = Convert.ToDecimal(e.NewValues[1]);

        var data = from p in context.Products
                   where p.ProductID == id
                   select p;

        foreach (var item in data)
        {
            item.ProductName = name;
            item.UnitPrice = price;
        }

        context.SubmitChanges();

        GridView1.EditIndex = -1;
        BindData();

        /////////////////////////////////////////////////////////////////

    }

    protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.EditIndex = -1;
        GridView1.PageIndex = 0;

        BindData();

        DetailsView1.DataSource = null;
        DetailsView1.DataBind();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //เขียน Code Query รอไว้

        sql = "select * from products where productID=@productID";

        // เพิ่ม sqlCommand รับ  categoryid
        SqlCommand com = new SqlCommand(sql, conn);
        com.Parameters.Add("@productID", SqlDbType.Int).Value = Convert.ToInt32(GridView1.SelectedValue);

        //เขียน SqlCommand รอไว้
        SqlDataAdapter da = new SqlDataAdapter(com);
        DataSet ds = new DataSet(); //เขียน SqlCommand Dis-connection รอไว้
        da.Fill(ds); // SqlDataAdapter ประมวลผลไปเก็บใน(Fill) DataSet

        DetailsView1.DataSource = ds.Tables[0];
        DetailsView1.DataBind();
    }
}