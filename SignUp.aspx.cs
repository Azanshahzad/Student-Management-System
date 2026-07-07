using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Services;

namespace YourNamespace
{
    public partial class SignUp : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Text = ""; // Clear message on page load
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.Trim();
            string username = txtUsername.Text.Trim();
            string email = txtEmail.Text.Trim();
            string phone = txtPhone.Text.Trim();
            string cnic = txtCNIC.Text.Trim();
            string password = txtPassword.Text.Trim();

            string connectionString = ConfigurationManager.ConnectionStrings["UserDBConnection"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();

                // Check if Email Already Exists
                if (IsEmailRegistered(email, con))
                {
                    lblMessage.Text = "Email already exists! Try another one.";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    return;
                }

                // Check if CNIC Already Exists
                if (IsCNICRegistered(cnic, con))
                {
                    lblMessage.Text = "CNIC already exists! Try another one.";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    return;
                }

                // Insert New User
                string insertQuery = "INSERT INTO Users (Name, Username, Email, Phone, CNIC, Password) VALUES (@Name, @Username, @Email, @Phone, @CNIC, @Password)";
                using (SqlCommand cmd = new SqlCommand(insertQuery, con))
                {
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@Username", username);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Phone", phone);
                    cmd.Parameters.AddWithValue("@CNIC", cnic);
                    cmd.Parameters.AddWithValue("@Password", password); // Use hashing in real projects

                    int result = cmd.ExecuteNonQuery();
                    if (result > 0)
                    {
                        lblMessage.Text = "Registration Successful!";
                        lblMessage.ForeColor = System.Drawing.Color.Green;
                        Response.Redirect("Login.aspx");
                    }
                    else
                    {
                        lblMessage.Text = "Registration Failed. Try Again.";
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
        }

        // Function to check if email is already registered
        private bool IsEmailRegistered(string email, SqlConnection con)
        {
            string query = "SELECT COUNT(*) FROM Users WHERE Email = @Email";
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@Email", email);
                int count = (int)cmd.ExecuteScalar();
                return count > 0;
            }
        }

        // Function to check if CNIC is already registered
        private bool IsCNICRegistered(string cnic, SqlConnection con)
        {
            string query = "SELECT COUNT(*) FROM Users WHERE CNIC = @CNIC";
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@CNIC", cnic);
                int count = (int)cmd.ExecuteScalar();
                return count > 0;
            }
        }

        // WebMethod to check email availability (for real-time validation)
        [WebMethod]
     
        public static string CheckEmailAvailability(string email)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["UserDBConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                string query = "SELECT COUNT(*) FROM Users WHERE Email = @Email";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Email", email);
                    int count = (int)cmd.ExecuteScalar();
                    return count > 0 ? "Registered" : "Available";
                }
            }
        }


        // WebMethod to check CNIC availability (for real-time validation)
        [WebMethod]
        public static string CheckCNICAvailability(string cnic)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["UserDBConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                string query = "SELECT COUNT(*) FROM Users WHERE CNIC = @CNIC";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@CNIC", cnic);
                    int count = (int)cmd.ExecuteScalar();
                    return count > 0 ? "Registered" : "Available";
                }
            }
        }
    }
}
