using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _16_State01 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // ปกติแล้ว ตัวแปรจะไม่ส่งผ่านไปยัง Page อื่น
        // Session : ตัวช่วยการจำตัวแปร ฝั่ง Server
        // Cookies : ตัวช่วยการจำตัวแปร ฝั่ง Client

        // Session : ถ้าไปโหลดหน้า State2 เลย โดยไม่ผ่าน State 1  จะไม่เจอชื่อ เพราะ Session ใน State 1 ไม่ได้ถูกใช้
        Session["name"] = "Mckiler";

        // Cookies : จะจำตลอดถ้าไม่หมดเวลา
        Response.Cookies["email"].Value = "xxx@mail.com";
        Response.Cookies["email"].Expires = DateTime.Now.AddMinutes(1);
    }
}