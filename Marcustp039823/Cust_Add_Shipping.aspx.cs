using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Marcustp039823
{
    public partial class Cust_Add_Shipping : System.Web.UI.Page
    {
        public Dictionary<string, string> allports;
        protected void Page_Load(object sender, EventArgs e)
        {
            allports = new helper().getAllPorts();
            if (Session["UserRole"] != null && Session["UserRole"].ToString() == "Customer")
            {
                
                String email = Session["Email"].ToString();
                string UID = helper.getUserId(email);
                if (Request.QueryString["add"] != null)
                {
                    String depport = Request.Form["depport"];
                    string[] ndepport = depport.Split(new string[] { "," }, StringSplitOptions.None);
                    string zdepport = ndepport[0];
                    string depportid = helper.getPortId(zdepport);
                    String arrport = Request.Form["arrport"];
                    string[] narrport = arrport.Split(new string[] { "," }, StringSplitOptions.None);
                    string zarrport = narrport[0];
                    string arrportid = helper.getPortId(zarrport);
                    String dateship = Request.Form["date"];
                    String status = "Pending";
                    String cost = Request.Form["cost"];
                    String weight = Request.Form["weight"];
                    String details = Request.Form["details"];
                    String duration = Request.Form["duration"];
                    //System.Diagnostics.Debug.WriteLine("-----------"+ "'"+depport+ "','" + arrport + "','" + depportid + "','" + arrportid + "','" + UID + "','" + dateship + "','" + status + "','" + cost + "','" + weight + "','" + details + "','" + duration + "'");
                    String queryaddship = $"INSERT INTO Shippings(Dep_PID,Arr_PID,Customer_ID ,Date_Shipping,Status,Cost,Weight,Details,Duration) VALUES ({depportid},{arrportid},{UID},'{dateship}','{status}','{cost}','{weight}','{details}','{duration}')";
                    helper.executeQuery(queryaddship);
                    Response.Redirect("Cust_Home.aspx");
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}