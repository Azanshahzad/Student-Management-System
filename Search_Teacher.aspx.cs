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
    public partial class Search_Teacher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button7_Click1(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["UserDBConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            string query = "select * from [Teachers] Where TeacherID='" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            GridView1.DataSource = rdr;
            GridView1.DataBind();
            con.Close();
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}