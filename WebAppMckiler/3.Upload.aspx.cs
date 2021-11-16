using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _3_Upload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.CssClass = ""; 
    }

    protected void uploadLinkedBtn_Click(object sender, EventArgs e)
    {
        if (!FileUpload1.HasFile)
        {
            Label1.Text = "Please select a file";
            Label1.CssClass = "text-danger";
        }
        else
        {
            // ถ้าเลือกหลายไฟล์ ใช้ FileUpload1.PostedFiles
            String name = FileUpload1.FileName;
            string type = FileUpload1.PostedFile.ContentType;
            int size = FileUpload1.PostedFile.ContentLength;
            if (type != "image/jpeg" && type != "image/png")
            {
                Label1.Text = "Please select only file type Jpeg , PNG ";
                Label1.CssClass = "text-danger";
            }
            //ขนาดเกิน 800KB
            else if (size > 800 * 1024)
            {
                Label1.Text = "Please select file not exceed 800 kb ";
                Label1.CssClass = "text-danger";
            }
            else
            {
                name = type == "imange/jpeg" ? Guid.NewGuid() + ".jpg" : Guid.NewGuid() + ".png";
                //  สร้าง Folder upload
                FileUpload1.PostedFile.SaveAs(Server.MapPath("upload/" + name));
                 
                Image1.Visible = true;
                Image1.ImageUrl = "upload/" + name;
                Label1.Text = $"Name : {name}<br>";
                Label1.Text += $"Type : {type}<br>";
                Label1.Text += $"size : {size} bytes<br>";
                
            }
        }
    }
}