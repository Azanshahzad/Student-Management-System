using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SAD
{
    public partial class Edit_Student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Response.Redirect("DeleteStd.aspx");
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateStd.aspx");
        }
    }
}