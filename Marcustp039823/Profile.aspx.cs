using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Marcustp039823
{
    public partial class Profile : System.Web.UI.Page
    {
        public SqlDataReader sdr;
        protected void Page_Load(object sender, EventArgs e)
        {
            string email = Session["Email"].ToString();
            string uid = helper.getUserId(email);
            String query = $"SELECT * From Customers WHERE CID={uid}";
            SqlConnection conn = helper.getConnection();
            conn.Open();
            SqlCommand cm = new SqlCommand(query, conn);
            sdr = cm.ExecuteReader();
        }
    }
}