using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;


namespace SAD
{
    public partial class UpdateStd : Page
    {
        string conString = ConfigurationManager.ConnectionStrings["UserDBConnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtRollno.Focus();
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(conString))
            {
                string query = "SELECT * FROM Students WHERE StudentID = @StudentID";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@StudentID", txtRollno.Text.Trim());

                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        txtFirstName.Text = reader["FirstName"].ToString();
                        txtLastName.Text = reader["LastName"].ToString();
                        txtEmail.Text = reader["Email"].ToString();
                        txtPhoneNumber.Text = reader["PhoneNumber"].ToString();
                        txtDOB.Text = Convert.ToDateTime(reader["DOB"]).ToString("yyyy-MM-dd");
                        rblGender.SelectedValue = reader["Gender"].ToString();
                        ddlProvince.SelectedValue = reader["Province"].ToString();
                        txtCity.Text = reader["City"].ToString();
                        txtAddress.Text = reader["Address"].ToString();
                        txtPostalCode.Text = reader["PostalCode"].ToString();
                        txtGuardianName.Text = reader["GuardianName"].ToString();
                        txtGuardianPhone.Text = reader["GuardianPhone"].ToString();
                        ddlDepartment.SelectedValue = reader["Department"].ToString();
                        txtPreviousCollege.Text = reader["PreviousCollege"].ToString();
                    }
                }
                else
                {
                    // Student not found
                    Response.Write("<script>alert('Student Not Found');</script>");
                }
                con.Close();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(conString))
            {
                string query = @"UPDATE Students SET
                    FirstName = @FirstName,
                    LastName = @LastName,
                    Email = @Email,
                    PhoneNumber = @PhoneNumber,
                    DOB = @DOB,
                    Gender = @Gender,
                    Province = @Province,
                    City = @City,
                    Address = @Address,
                    PostalCode = @PostalCode,
                    GuardianName = @GuardianName,
                    GuardianPhone = @GuardianPhone,
                    Department = @Department,
                    PreviousCollege = @PreviousCollege
                 WHERE StudentID = @StudentID";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text.Trim());
                cmd.Parameters.AddWithValue("@LastName", txtLastName.Text.Trim());
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                cmd.Parameters.AddWithValue("@PhoneNumber", txtPhoneNumber.Text.Trim());
                cmd.Parameters.AddWithValue("@DOB", txtDOB.Text.Trim());
                cmd.Parameters.AddWithValue("@Gender", rblGender.SelectedValue);
                cmd.Parameters.AddWithValue("@Province", ddlProvince.SelectedValue);
                cmd.Parameters.AddWithValue("@City", txtCity.Text.Trim());
                cmd.Parameters.AddWithValue("@Address", txtAddress.Text.Trim());
                cmd.Parameters.AddWithValue("@PostalCode", txtPostalCode.Text.Trim());
                cmd.Parameters.AddWithValue("@GuardianName", txtGuardianName.Text.Trim());
                cmd.Parameters.AddWithValue("@GuardianPhone", txtGuardianPhone.Text.Trim());
                cmd.Parameters.AddWithValue("@Department", ddlDepartment.SelectedValue);
                cmd.Parameters.AddWithValue("@PreviousCollege", txtPreviousCollege.Text.Trim());
                cmd.Parameters.AddWithValue("@StudentID", Convert.ToInt32(txtRollno.Text.Trim()));

                con.Open();
                int rowsAffected = cmd.ExecuteNonQuery();
                con.Close();

                if (rowsAffected > 0)
                {
                    Response.Write("<script>alert('Student Updated Successfully');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Error Updating Student');</script>");
                }
            }
        }
    }
}
