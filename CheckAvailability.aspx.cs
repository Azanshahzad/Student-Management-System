using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
namespace YourNamespace
{
    public partial class CheckAvailability : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["UserDBConnection"].ConnectionString;
            string type = Request.Form["type"];
            string value = type == "email" ? Request.Form["email"] : Request.Form["username"];

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = type == "email"
                    ? "SELECT COUNT(*) FROM Users WHERE Email = @Value"
                    : "SELECT COUNT(*) FROM Users WHERE Username = @Value";

                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Value", value);

                conn.Open();
                int count = (int)cmd.ExecuteScalar();

                Response.Write(count > 0 ? "<span style='color:red;'>Already taken ❌</span>" : "<span style='color:green;'>Available ✅</span>");
            }
        }
    }
}
