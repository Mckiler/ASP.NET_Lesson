using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _17_State02 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Session : ตัวช่วยการจำตัวแปร ฝั่ง Server
        // Cookies : ตัวช่วยการจำตัวแปร ฝั่ง Client

        // Session : ถ้าไปโหลดหน้า State2 เลย โดยไม่ผ่าน State 1  จะไม่เจอชื่อ เพราะ Session ใน State 1 ไม่ได้ถูกใช้
        if (Session["name"] != null)
        {
            Label1.Text += $"Name :{Session["name"]}<br>";
        }
        if (Request.Cookies["email"] != null)
        {
            // Cookies : จะจำตลอดถ้าไม่หมดเวลา
            Label1.Text += $"Email :{Server.HtmlEncode(Request.Cookies["email"].Value)}<br>";
        }
    }
}