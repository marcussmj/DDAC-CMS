using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Marcustp039823
{
    public partial class Forgot_Password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["forpass"] != null)
            {
                string email = Request.Form["email"];

                bool checkemail = new helper().isEmailExists(email);
                if (checkemail)
                {
                    string password = helper.getPassword(email);
                    MailMessage mm = new MailMessage("marcussimmj@gmail.com", email);
                    mm.Subject = "Password Recovery";
                    mm.Body = string.Format("Hi {0},<br /><br />Your password is {1}.<br /><br />Thank You.", email, password);
                    mm.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.EnableSsl = true;
                    NetworkCredential NetworkCred = new NetworkCredential();
                    NetworkCred.UserName = "marcussimmj@gmail.com";
                    NetworkCred.Password = "wnn62131798";
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = NetworkCred;
                    smtp.Port = 587;
                    smtp.Send(mm);
                    Response.Write("<script>alert('email sent')</script>");
                }
                else
                {
                    Response.Write("<script>alert('email not exists in the system')</script>");
                }
            }
        }
    }
}