using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Net.Mail;


public partial class _8_ContactUs : System.Web.UI.Page
{
    protected void Page_Init(object sender, EventArgs e)
    {
        Label1.Text = "";
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        if (Page.IsValid)
        {
            String name = txtName.Text;
            String email = txtEmail.Text;
            String message = txtMessage.Text;

            Label1.Text += $"Name : {txtName.Text}</br>";
            Label1.Text += $"Email : {txtEmail.Text}</br>";
            Label1.Text += $"Message : {txtMessage.Text}</br>";

            // Using System.Net.Mail; ข้างบน
            MailMessage mail = new MailMessage();
            
            mail.From = new MailAddress("tempmcmckiler@gmail.com", "Adminตั้งชื่อได้");
            mail.To.Add(new MailAddress("mc_mckiler@hotmail.com"));
            mail.CC.Add(new MailAddress(email));
            mail.Bcc.Add(new MailAddress("pipatpon.m@hotmail.com"));

            // ส่วนใหญ่เดี๋ยวนี้เมล์เดียวกันจะหยุบรวมกัน เลยแยกด้วยเวลา 
            
            mail.Subject = "Contact Us" + DateTime.Now;

            String body = $"Name : {name}\n";
            body += $"Email : {email}\n";
            body += $"Message : {message}\n";
            mail.Body = body;

            // ต้องเปิดให้ Account เชื่อความปลอดภัยน้อย
            SmtpClient smtp = new SmtpClient();

            smtp.Send(mail);
            txtName.Text = "";
            txtEmail.Text = "";
            txtMessage.Text = "";

            Label1.Text += "Message Sent Success";
        }
    }
}