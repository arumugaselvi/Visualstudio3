using MyAudit_KA.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MDL_Audit;
using BAL_Audit;

namespace MyAudit_KA.MasterDetails
{
    public partial class CompanyDetails : System.Web.UI.Page
    {
        public static readonly ValidateSession valSession = new ValidateSession();
        public static readonly AuditSession objSession = new AuditSession();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                valSession.CheckSessionStatus(objSession);
                if (AuditSession.CompanyCode == "CC000")
                {
                    //write clear function
                }
                else
                {
                    adddatatofield();
                }
            }
        }

        protected void btnCompanyDetailsSave_Click(object sender, EventArgs e)
        {
            valSession.CheckSessionStatus(objSession);
            lblSucessCmpDetails.InnerText = "";
            var mdlCompanyDtls = new mdlCompanyDetails();

            mdlCompanyDtls.CompanyTabDetails = divCompanyDetail.ID;
            mdlCompanyDtls.compcode = txtCompanyCode.Text;
            mdlCompanyDtls.compname = txtCompanyName.Text;
            mdlCompanyDtls.NatureOfIndustry = txtnatureofIndustry.Text;
            mdlCompanyDtls.DateOfRegister = /*Convert.ToDateTime*/(txtDateofSetup.Text);
            mdlCompanyDtls.CurrentStatus = ddlStatus.Text;
            mdlCompanyDtls.InActiveDate = /*Convert.ToDateTime*/(txtstatusDate.Text);
            mdlCompanyDtls.branch = chk_branch.Checked;

            var blCompanyDetails = new balCompanyDetails();
            var dtLoginDetails = blCompanyDetails.insertCompanyDetails(mdlCompanyDtls);
            txtCompanyCode.Text = AuditSession.CompanyCode = dtLoginDetails.Rows[0]["compcode"].ToString();
            lblSucessCmpDetails.InnerText = "Company Details Saved Sucessfully ; Company Code:" + txtCompanyCode.Text;
            enableDiv();
        }
        protected void enableDiv()
        {
            divCompanyAddress.Style.Add("pointer-events", "auto");
            divFactoryAddress.Style.Add("pointer-events", "auto");
            divEmployerPersonalDetails.Style.Add("pointer-events", "auto");
            divESIDetails.Style.Add("pointer-events", "auto");
            divFactoryAddress.Style.Add("pointer-events", "auto");
            divProvidentFundDetails.Style.Add("pointer-events", "auto");
            divAdditonalDetails.Style.Add("pointer-events", "auto");
            //btnCompanyDetailsSave.Text = "Update";
        }

        protected void adddatatofield()
        {

            txtCompanyCode.Text = AuditSession.CompanyCode;
            var blCompanyDetails = new balCompanyDetails();
            var mdlCompanyDtls = new mdlCompanyDetails();
            mdlCompanyDtls.compcode = AuditSession.CompanyCode;

            var dtCompanyDetails = blCompanyDetails.getCompanyDetails(mdlCompanyDtls);
            if (dtCompanyDetails.Rows.Count > 0)
            {
                txtCompanyName.Text = dtCompanyDetails.Rows[0]["compname"].ToString();
                txtnatureofIndustry.Text = dtCompanyDetails.Rows[0]["NatureOfIndustry"].ToString();
                txtstatusDate.Text = Convert.ToString(dtCompanyDetails.Rows[0]["InActiveDate"]) == "" ? "" : Convert.ToDateTime(dtCompanyDetails.Rows[0]["InActiveDate"]).ToString("yyyy-MM-dd");
                txtDateofSetup.Text = Convert.ToString(dtCompanyDetails.Rows[0]["DateOfRegister"]) == "" ? "" : Convert.ToDateTime(dtCompanyDetails.Rows[0]["DateOfRegister"]).ToString("yyyy-MM-dd");
                chk_branch.Checked = Convert.ToString(dtCompanyDetails.Rows[0]["branch"]) == "" ? false : Convert.ToBoolean(dtCompanyDetails.Rows[0]["branch"].ToString());
                ddlStatus.SelectedValue = dtCompanyDetails.Rows[0]["CurrentStatus"].ToString();

                enableDiv();
            }
        }

    }
}