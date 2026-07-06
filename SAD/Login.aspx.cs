using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace YourNamespace
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Text = ""; // Clear message on page load
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            if (IsUserValid(username, password))
            {
                Response.Redirect("Dashboard.aspx"); // Redirect on success
            }
            else
            {
                lblMessage.Text = "⚠️ Invalid Username or Password!";
                lblMessage.Style["display"] = "block"; // Show error message
            }
        }

        private bool IsUserValid(string username, string password)
        {
            bool isValid = false;
            string connStr = ConfigurationManager.ConnectionStrings["UserDBConnection"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "SELECT COUNT(*) FROM Users WHERE Username = @Username AND Password = @Password";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Username", username);
                cmd.Parameters.AddWithValue("@Password", password); // ⚠️ Use hashing in real applications

                conn.Open();
                int count = (int)cmd.ExecuteScalar(); // Check if user exists
                isValid = count > 0;
            }
            return isValid;
        }
    }
}
