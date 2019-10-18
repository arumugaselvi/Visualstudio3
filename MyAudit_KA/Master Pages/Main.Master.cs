using MyAudit_KA.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyAudit_KA.Master_Pages
{
    public partial class Main : System.Web.UI.MasterPage
    {
        public static readonly ValidateSession valSession = new ValidateSession();
        public static readonly AuditSession objSession = new AuditSession();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                valSession.CheckSessionStatus(objSession);
                lblusername.Text = objSession.loginDetails[1].ToString();
            }
        }
        protected void btn_logout_click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("~/Login.aspx");
        }
    }
}