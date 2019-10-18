using BAL_Audit;
using MyAudit_KA.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyAudit
{
    public partial class CompanyMaster : System.Web.UI.Page
    {
        public static readonly ValidateSession valSession = new ValidateSession();
        public static readonly AuditSession objSession = new AuditSession();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                valSession.CheckSessionStatus(objSession);
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

        protected void lnkSave_Click(object sender, EventArgs e)
        {
            // AuditSession.CompanyCode = Value;

            // Get the currently selected row using the SelectedRow property.
          //  GridViewRow row = grid_CompanyMaster.SelectedRow;
//
            // And you respective cell's value
         //   AuditSession.CompanyCode = row.Cells[1].Text;


            var lb = (LinkButton)sender;
            GridViewRow row = (GridViewRow)lb.NamingContainer;
            if (row != null)
            {
                int index = row.RowIndex; //gets the row index selected

                GridViewRow row1 = grid_CompanyMaster.Rows[index];
                AuditSession.CompanyCode = (row.FindControl("lbl_CompanyCode") as Label).Text;

                Response.Redirect("~/Masters/CompanyDetails.aspx");

            }

            

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            AuditSession.CompanyCode = "CC000";
            Response.Redirect("~/Masters/CompanyDetails.aspx");
            
        }
    }
}



