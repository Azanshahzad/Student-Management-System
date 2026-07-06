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
    public partial class Search_Student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button7_Click1(object sender, EventArgs e)
        {
            string ss = TextBox1.Text;

            string constr = ConfigurationManager.ConnectionStrings["UserDBConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            string query = "select * from [Students] Where StudentID=@StudentID";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.Parameters.AddWithValue("@StudentID", ss);
            SqlDataReader rdr = cmd.ExecuteReader();
            GridView1.DataSource = rdr;
            GridView1.DataBind();
            con.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}