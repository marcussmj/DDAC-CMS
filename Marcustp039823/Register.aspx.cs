using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Marcustp039823
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["register"] != null)
            {

                String email = Request.Form["email"];
                String password = Request.Form["password"];
                String userRole = "Customer";
                String name = Request.Form["name"];
                String companyname = Request.Form["comname"];
                String contact = Request.Form["contact"];
                String personincharge = Request.Form["pic"];
                bool isEmailExist = new helper().isEmailExists(email);

                if (!isEmailExist)
                {

                    String query = "INSERT INTO Users (Email, Password, UserRole) OUTPUT INSERTED.UID VALUES ('" + email + "','" + password + "','" + userRole + "')";
                    int custid = helper.registerQuery(query);
                    String regquery = $"INSERT INTO Customers(CID, Name, Company_Name, Contact, Per_I_C, Email) VALUES ({custid},'{name}','{companyname}','{contact}','{personincharge}','{email}')";
                    helper.executeQuery(regquery);
                    Response.Redirect("Login.aspx?registersuccess=true");
                }
                else
                {
                    Response.Write("<script>alert('Email already exists!');</script");
                }
            }

        }
    }
}