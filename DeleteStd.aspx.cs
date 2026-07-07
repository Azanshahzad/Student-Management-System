using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace SAD
{
    public partial class DeleteStd : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = TextBox1.Text.Trim();

            if (string.IsNullOrEmpty(id))
            {
                lblMessage.Text = "Student ID is required!";
                lblMessage.CssClass = "error-message";
                return;
            }

            string constr = ConfigurationManager.ConnectionStrings["UserDBConnection"].ConnectionString;

            using (SqlConnection cn = new SqlConnection(constr))
            {
                cn.Open();

                // Check if the student exists
                string checkQuery = "SELECT COUNT(*) FROM Students WHERE StudentID = @StudentID";
                using (SqlCommand checkCmd = new SqlCommand(checkQuery, cn))
                {
                    checkCmd.Parameters.AddWithValue("@StudentID", id);
                    int count = (int)checkCmd.ExecuteScalar();

                    if (count == 0)
                    {
                        lblMessage.Text = "Student ID not found!";
                        lblMessage.CssClass = "error-message";
                        return;
                    }
                }

                // Confirmation message before deletion (can be improved with JavaScript)
                if (ConfirmDelete())
                {
                    // Proceed with deletion
                    string deleteQuery = "DELETE FROM Students WHERE StudentID = @StudentID";
                    using (SqlCommand cmd = new SqlCommand(deleteQuery, cn))
                    {
                        cmd.Parameters.AddWithValue("@StudentID", id);
                        int r = cmd.ExecuteNonQuery();

                        if (r > 0)
                        {
                            lblMessage.Text = "Student deleted successfully!";
                            lblMessage.CssClass = "success-message";
                        }
                        else
                        {
                            lblMessage.Text = "Error deleting student!";
                            lblMessage.CssClass = "error-message";
                        }
                    }
                }
                else
                {
                    lblMessage.Text = "Deletion canceled.";
                    lblMessage.CssClass = "info-message";
                }
            }
        }

        private bool ConfirmDelete()
        {
            return true; // Implement JavaScript confirmation in the frontend
        }
    }
}
