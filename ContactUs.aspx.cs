using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
          MailMessage mailMessage = new MailMessage("gohungry.efood@gmail.com", TextBox2.Text.ToString());
        mailMessage.Subject = "your message received";
        mailMessage.IsBodyHtml = true;
        mailMessage.Body = TextBox3.Text.ToString();
        mailMessage.Body = TextBox4.Text.ToString();




        SmtpClient smtpClient = new SmtpClient();
        smtpClient.Send(mailMessage);


        MailMessage mailMessages = new MailMessage("gohungry.efood@gmail.com", "gohungry.efood@gmail.com");
        mailMessages.Subject = TextBox2.Text.ToString() + "your message is received";
        mailMessages.Body = TextBox3.Text.ToString();

        SmtpClient smtpClient1 = new SmtpClient();
        smtpClient.Send(mailMessages);
    }
}
