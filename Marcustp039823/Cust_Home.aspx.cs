using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Marcustp039823
{
    public partial class Cust_Home : System.Web.UI.Page
    {
        public SqlDataReader sdr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserRole"] != null && Session["UserRole"].ToString() == "Customer")
            {
                String email = Session["Email"].ToString();
                string UID = helper.getUserId(email);
                String query = $"SELECT s.*, pa.Name as depport, pb.Name as arrport FROM Shippings s INNER JOIN Ports pa ON s.Dep_PID=pa.PID " +
                    $"INNER JOIN Ports pb ON s.Arr_PID=pb.PID WHERE s.Customer_ID={UID}";
                SqlConnection conn = helper.getConnection();
                conn.Open();
                SqlCommand cm = new SqlCommand(query, conn);
                sdr = cm.ExecuteReader();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}