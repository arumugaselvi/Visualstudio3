using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyAudit
{
    public partial class CompanyDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblusername.Text = "Welcome : " + Convert.ToString(Session["username"]);
            }
        }
        protected void btn_logout_click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }
    }
}