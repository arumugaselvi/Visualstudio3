using MyAudit_KA.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyAudit_KA.Dashboard
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        public static readonly ValidateSession valSession = new ValidateSession();
        public static readonly AuditSession objSession = new AuditSession();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }
        }
        protected void btn_companymaster_click(object sender, EventArgs e)
        {
            Response.Redirect("~/Masters/CompanyMaster.aspx");
        }
        protected void btn_Employeemaster_click(object sender, EventArgs e)
        {
            Response.Redirect("~/EmployeeMaster.aspx");
        }
    }
}