using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Marcustp039823
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["registersuccess"] != null)
            {
                Response.Write("<script>alert('register successfull');</script");
            }

            if (Request.QueryString["login"] != null)
            {
                String email = Request.Form["email"];
                String password = Request.Form["password"];
                bool loginResult = new helper().Login(email, password);
                if (loginResult == true)
                {

                    String userRole = Session["UserRole"].ToString();
                    if (userRole.Equals("Customer"))
                    {
                        Response.Redirect("Cust_Home.aspx");
                    }
                    if (userRole.Equals("Staff"))
                    {
                        Response.Redirect("Staff_Home.aspx");

                    }
                }
                else
                {
                    Response.Write("<script>alert('Login failed, incorrect username or password');</script");
                }
            }
        }
    }
}