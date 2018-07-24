using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Marcustp039823
{
    public partial class Default1 : System.Web.UI.MasterPage
    {
        public string email = String.Empty;
        public string userrole = String.Empty;
        public string username = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] != null || Session["UserRole"] != null)
            {
                email = Session["Email"].ToString();
                string userid = helper.getUserId(email);
                username = helper.getCustomerName(userid);
                userrole = Session["UserRole"].ToString();
            }

        }
    }
}