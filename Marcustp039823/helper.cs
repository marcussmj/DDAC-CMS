using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Marcustp039823
{
    public class helper
    {
            public static SqlConnection getConnection()
            {
                SqlConnection conn = null;

                conn = new SqlConnection(@"Data Source=marcustp03982320180723064342dbserver.database.windows.net;Initial Catalog=Marcustp039823_db;Persist Security Info=True;User ID=Marcus;Password=P@$$w0rd15951");
                return conn;
            }

            public static void executeQuery(String strQuery)
            {


                SqlConnection conn = getConnection();
                conn.Open();
                SqlCommand cmd = new SqlCommand(strQuery, conn);
                cmd.ExecuteNonQuery();
                closeConnection(conn);

            }
            public static void closeConnection(SqlConnection conn)
            {

                if (conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }

            }

            public static int registerQuery(string query)
            {

                SqlConnection conn = getConnection();
                conn.Open();
                SqlCommand cmd = new SqlCommand(query, conn);
                Int32 newId = (Int32)cmd.ExecuteScalar();
                closeConnection(conn);
                return newId;
            }
            public bool isEmailExists(String email)
            {
                String query = "SELECT Email FROM Users where Email='" + email + "'";
                SqlConnection conn = getConnection();
                conn.Open();
                SqlCommand cm = new SqlCommand(query, conn);
                SqlDataReader sdr = cm.ExecuteReader();
                bool flag = false;
                if (sdr.HasRows)
                {
                    flag = true;
                }
                closeConnection(conn);
                return flag;
            }

            public static bool isPortExist(String portname)
            {
                String query = "SELECT Name FROM Ports where Name='" + portname + "'";
                SqlConnection conn = getConnection();
                conn.Open();
                SqlCommand cm = new SqlCommand(query, conn);
                SqlDataReader sdr = cm.ExecuteReader();
                bool flag = false;
                if (sdr.HasRows)
                {
                    flag = true;
                }
                closeConnection(conn);
                return flag;
            }

            public static bool isContainerExist(String containername)
            {
                String query = "SELECT Name FROM Containers where Name='" + containername + "'";
                SqlConnection conn = getConnection();
                conn.Open();
                SqlCommand cm = new SqlCommand(query, conn);
                SqlDataReader sdr = cm.ExecuteReader();
                bool flag = false;
                if (sdr.HasRows)
                {
                    flag = true;
                }
                closeConnection(conn);
                return flag;
            }

            public bool Login(string email, string password)
            {

                String query = "SELECT Email, UserRole FROM Users where Email = '" + email + "' and Password = '" + password + "';";
                SqlConnection conn = getConnection();
                conn.Open();
                SqlCommand cm = new SqlCommand(query, conn);
                SqlDataReader sdr = cm.ExecuteReader();
                bool flag = false;
                if (sdr.HasRows)
                {
                    flag = true;
                    System.Web.HttpContext.Current.Session["Email"] = email;

                    while (sdr.Read())
                    {
                        System.Web.HttpContext.Current.Session["UserRole"] = sdr["UserRole"].ToString();
                    }

                }
                closeConnection(conn);
                return flag;
            }

            public static string getUserId(string email)
            {
                string result = "";
                String query = "SELECT UID FROM Users where Email='" + email + "'";
                SqlConnection conn = getConnection();
                conn.Open();
                SqlCommand cm = new SqlCommand(query, conn);
                SqlDataReader sdr = cm.ExecuteReader();
                while (sdr.Read())
                {
                    result = sdr["UID"].ToString();
                }
                closeConnection(conn);
                return result;
            }

            public static string getCustomerName(string CID)
            {
                string result = "";
                String query = "SELECT Name FROM Customers where CID=" + CID + "";
                SqlConnection conn = getConnection();
                conn.Open();
                SqlCommand cm = new SqlCommand(query, conn);
                SqlDataReader sdr = cm.ExecuteReader();
                while (sdr.Read())
                {
                    result = sdr["Name"].ToString();
                }
                closeConnection(conn);
                return result;
            }

            public static string getPortId(string portname)
            {
                string result = "";
                String query = "SELECT PID FROM Ports where Name='" + portname + "'";
                SqlConnection conn = getConnection();
                conn.Open();
                SqlCommand cm = new SqlCommand(query, conn);
                SqlDataReader sdr = cm.ExecuteReader();
                while (sdr.Read())
                {
                    result = sdr["PID"].ToString();
                }
                closeConnection(conn);
                return result;
            }

            public static string getPassword(string email)
            {
                string result = "";
                String query = "SELECT Password FROM Users where Email='" + email + "'";
                SqlConnection conn = getConnection();
                conn.Open();
                SqlCommand cm = new SqlCommand(query, conn);
                SqlDataReader sdr = cm.ExecuteReader();
                while (sdr.Read())
                {
                    result = sdr["Password"].ToString();
                }
                closeConnection(conn);
                return result;
            }

            public static string getPortIdStaff(string SID)
            {
                string result = "";
                String query = "SELECT PID FROM Staffs where SID='" + SID + "'";
                SqlConnection conn = getConnection();
                conn.Open();
                SqlCommand cm = new SqlCommand(query, conn);
                SqlDataReader sdr = cm.ExecuteReader();
                while (sdr.Read())
                {
                    result = sdr["PID"].ToString();
                }
                closeConnection(conn);
                return result;
            }

            public static String[] getAllPortsName()
            {
                List<String> ports = new List<String>();
                String[] result = { };
                String query = "SELECT Name FROM Ports";
                SqlConnection conn = getConnection();
                conn.Open();
                SqlCommand cm = new SqlCommand(query, conn);
                SqlDataReader sdr = cm.ExecuteReader();
                while (sdr.Read())
                {
                    ports.Add(sdr["Name"].ToString());
                }
                closeConnection(conn);
                result = ports.ToArray();
                return result;
            }

            public Dictionary<string, string> getAllPorts()
            {

                var result = new Dictionary<string, string>();
                String query = "SELECT Name,Location FROM Ports";
                SqlConnection conn = getConnection();
                conn.Open();
                SqlCommand cm = new SqlCommand(query, conn);
                SqlDataReader sdr = cm.ExecuteReader();

                while (sdr.Read())
                {

                    result.Add(sdr["Name"].ToString(), sdr["Location"].ToString());
                }
                closeConnection(conn);
            return result;
        }

        public Dictionary<string, string> getAllContainers()
        {

            var result = new Dictionary<string, string>();
            String query = "SELECT CoID,Name FROM Containers";
            SqlConnection conn = getConnection();
            conn.Open();
            SqlCommand cm = new SqlCommand(query, conn);
            SqlDataReader sdr = cm.ExecuteReader();

            while (sdr.Read())
            {

                result.Add(sdr["CoID"].ToString(), sdr["Name"].ToString());
            }
            closeConnection(conn);
            return result;
        }

        public static string[] userdetails(string UID)
        {
            List<String> users = new List<String>();
            String[] result = { };
            String query = $"SELECT * FROM Customers WHERE CID={UID}";
            SqlConnection conn = getConnection();
            conn.Open();
            SqlCommand cm = new SqlCommand(query, conn);
            SqlDataReader sdr = cm.ExecuteReader();
            while (sdr.Read())
            {
                users.Add(sdr["Name"].ToString());
                users.Add(sdr["Company_Name"].ToString());
                users.Add(sdr["Contact"].ToString());
                users.Add(sdr["Per_I_C"].ToString());
                users.Add(sdr["Email"].ToString());
            }
            closeConnection(conn);
            result = users.ToArray();
            return result;
        }
    }
}