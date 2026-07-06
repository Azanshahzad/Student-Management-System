using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace SAD
{
    public partial class DeleteTeacher : Page
    {
        // Database connection string (Replace with your actual DB connection)
        string connectionString = ConfigurationManager.ConnectionStrings["UserDBConnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string teacherID = TextBox1.Text.Trim();

            if (string.IsNullOrEmpty(teacherID))
            {
                lblMessage.Text = "Please enter a valid Teacher ID.";
                return;
            }

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();

                // Check if the teacher exists
                string checkQuery = "SELECT COUNT(*) FROM Teachers WHERE TeacherID = @TeacherID";
                using (SqlCommand checkCmd = new SqlCommand(checkQuery, con))
                {
                    checkCmd.Parameters.AddWithValue("@TeacherID", teacherID);
                    int count = Convert.ToInt32(checkCmd.ExecuteScalar());

                    if (count == 0)
                    {
                        lblMessage.Text = "Error: Teacher not found!";
                        lblMessage.CssClass = "error-message";
                        return;
                    }
                }

                // Delete the teacher if exists
                string deleteQuery = "DELETE FROM Teachers WHERE TeacherID = @TeacherID";
                using (SqlCommand deleteCmd = new SqlCommand(deleteQuery, con))
                {
                    deleteCmd.Parameters.AddWithValue("@TeacherID", teacherID);
                    int rowsAffected = deleteCmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        lblMessage.Text = "Teacher deleted successfully!";
                        lblMessage.CssClass = "success-message";
                    }
                    else
                    {
                        lblMessage.Text = "Error: Deletion failed!";
                        lblMessage.CssClass = "error-message";
                    }
                }
            }
        }
    }
}
