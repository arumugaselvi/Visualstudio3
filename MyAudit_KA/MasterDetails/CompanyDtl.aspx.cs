using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using BAL_Audit;
using MyAudit_KA.Classes;
using System.Data;
using System.Data.SqlClient;


namespace MyAudit_KA.MasterDetails
{
    public partial class CompanyDtl : System.Web.UI.Page
    {
        public static readonly ValidateSession valSession = new ValidateSession();
        public static readonly AuditSession objSession = new AuditSession();



        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                valSession.CheckSessionStatus(objSession);
                lblusername.Text = objSession.loginDetails[1].ToString();
                BindCompanyMaster();
            }
        }

        private void BindCompanyMaster()
        {
            var dtCompanyDetails = new DataTable();
            var balCompany = new balMasters();
            dtCompanyDetails = balCompany.getCompanyData();
            grid_CompanyMaster.DataSource = dtCompanyDetails;
            grid_CompanyMaster.DataBind();
        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grid_CompanyMaster.PageIndex = e.NewPageIndex;
            BindCompanyMaster();
        }
        protected void btn_logout_click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }


    }
}