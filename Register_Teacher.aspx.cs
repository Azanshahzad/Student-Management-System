using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SAD
{
    public partial class Register_Teacher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["UserDBConnection"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();

                // 🛠 Step 1: Check if CNIC already exists
                string checkQuery = "SELECT COUNT(*) FROM Teachers WHERE CNIC = @CNIC";
                SqlCommand checkCmd = new SqlCommand(checkQuery, conn);
                checkCmd.Parameters.AddWithValue("@CNIC", txtCNIC.Text);
                int count = (int)checkCmd.ExecuteScalar();

                if (count > 0)
                {
                    // 🛑 Show error if CNIC exists
                    Response.Write("<script>alert('CNIC already exists! Please enter a unique CNIC.');</script>");
                    return;
                }

                // 🛠 Step 2: Calculate Age Correctly
                DateTime birthDate;
                if (!DateTime.TryParse(txtAge.Text, out birthDate))
                {
                    Response.Write("<script>alert('Invalid date format for Age. Please enter a valid date.');</script>");
                    return;
                }
                int age = DateTime.Now.Year - birthDate.Year;

                // 🛠 Step 3: Insert Teacher Record
                string query = "INSERT INTO Teachers (FirstName, LastName, Email, PhoneNumber, CNIC, Age, Gender, Province, City, Address, PostalCode, Qualifications, Experience, Department) " +
                               "VALUES (@FirstName, @LastName, @Email, @PhoneNumber, @CNIC, @Age, @Gender, @Province, @City, @Address, @PostalCode, @Qualifications, @Experience, @Department)";

                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
                cmd.Parameters.AddWithValue("@LastName", txtLastName.Text);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@PhoneNumber", txtPhone.Text); // Ensure this matches DB column
                cmd.Parameters.AddWithValue("@CNIC", txtCNIC.Text);
                cmd.Parameters.AddWithValue("@Age", age);
                cmd.Parameters.AddWithValue("@Gender", rblGender.SelectedValue);
                cmd.Parameters.AddWithValue("@Province", ddlProvince.SelectedValue);
                cmd.Parameters.AddWithValue("@City", txtCity.Text);
                cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
                cmd.Parameters.AddWithValue("@PostalCode", txtPostalCode.Text);
                cmd.Parameters.AddWithValue("@Qualifications", txtQualifications.Text);
                cmd.Parameters.AddWithValue("@Experience", txtExperience.Text);
                cmd.Parameters.AddWithValue("@Department", ddlDepartment.SelectedValue);

                cmd.ExecuteNonQuery();
                conn.Close();

                // ✅ Success Message
                Response.Write("<script>alert('Teacher registered successfully!');</script>");
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.RawUrl);
        }
    }
}