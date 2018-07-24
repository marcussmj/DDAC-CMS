using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Marcustp039823
{
    public partial class Staff_Edit_Shipping : System.Web.UI.Page
    {
        public SqlDataReader sdr;
        public Dictionary<string, string> allcontainers;
        public string currentportid;
        public string shipdepid;
        public string shipid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserRole"] != null && Session["UserRole"].ToString() == "Staff")
            {
                allcontainers = new helper().getAllContainers();
                if (Request.QueryString["edit"] != null)
                {
                    shipid = Request.QueryString["edit"];
                    currentportid = Request.QueryString["curport"];
                    shipdepid = Request.QueryString["shipdepport"];
                    String query = $"SELECT s.*, pa.Name as depport, pb.Name as arrport FROM Shippings s INNER JOIN Ports pa ON s.Dep_PID=pa.PID " +
                                $"INNER JOIN Ports pb ON s.Arr_PID=pb.PID WHERE s.ShID={shipid}";
                    SqlConnection conn = helper.getConnection();
                    conn.Open();
                    SqlCommand cm = new SqlCommand(query, conn);
                    sdr = cm.ExecuteReader();
                }
                else
                {
                    Response.Redirect("Staff_Home.aspx");
                }
                string status = "";
                string conid = "";
                string queryedit = "";
                if (Request.QueryString["add"] != null)
                {
                    if (Request.Form["conid"] != null)
                    {
                        conid = Request.Form["conid"].ToString();
                    }
                    if (Request.Form["approval"] != null)
                    {
                        status = Request.Form["approval"].ToString();
                    }
                    
                    
                    queryedit = $"UPDATE Shippings SET Status='{status}', Container_ID={conid} WHERE ShID={shipid}";
                    if (conid == "")
                    {
                        queryedit = $"UPDATE Shippings SET Status='{status}' WHERE ShID={shipid}";
                    }
                    if (status == "")
                    {
                        queryedit = $"UPDATE Shippings SET Container_ID={conid}, Status='Arriving' WHERE ShID={shipid}";
                    }
                    helper.executeQuery(queryedit);
                    Response.Redirect("Staff_Edit_Shipping.aspx");
                }

            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}