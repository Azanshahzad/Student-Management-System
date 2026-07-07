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
    public partial class Register_Student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button7_Click(object sender, EventArgs e) // Register Button
        {
            string connStr = ConfigurationManager.ConnectionStrings["UserDBConnection"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "INSERT INTO Students (FirstName, LastName, Email, PhoneNumber, DOB, Gender, Province, City, Address, PostalCode, GuardianName, GuardianPhone, Department, PreviousCollege) " +
                               "VALUES (@FirstName, @LastName, @Email, @PhoneNumber, @DOB, @Gender, @Province, @City, @Address, @PostalCode, @GuardianName, @GuardianPhone, @Department, @PreviousCollege)";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@FirstName", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@LastName", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@Email", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@PhoneNumber", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@DOB", TextBox5.Text);
                    cmd.Parameters.AddWithValue("@Gender", RadioButtonList1.SelectedValue);
                    cmd.Parameters.AddWithValue("@Province", DropDownList1.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@City", TextBox7.Text);
                    cmd.Parameters.AddWithValue("@Address", TextBox12.Text);
                    cmd.Parameters.AddWithValue("@PostalCode", TextBox8.Text);
                    cmd.Parameters.AddWithValue("@GuardianName", TextBox13.Text);
                    cmd.Parameters.AddWithValue("@GuardianPhone", TextBox9.Text);
                    cmd.Parameters.AddWithValue("@Department", DropDownList2.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@PreviousCollege", TextBox10.Text);

                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            Response.Write("<script>alert('Registration Successful!');</script>");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            // Clear all input fields
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            RadioButtonList1.ClearSelection();
            DropDownList1.ClearSelection();
            TextBox7.Text = "";
            TextBox12.Text = "";
            TextBox8.Text = "";
            TextBox13.Text = "";
            TextBox9.Text = "";
            DropDownList2.ClearSelection();
            TextBox10.Text = "";
        }
    }
}