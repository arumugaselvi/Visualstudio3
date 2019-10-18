using MyAudit_KA.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MDL_Audit;
using BAL_Audit;

namespace MyAudit_KA.Masters
{
    public partial class CompanyDetails_Tab5 : System.Web.UI.Page
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
        protected void adddatatofield()
        {
            var blCompanyDetails = new balCompanyDetails();
            var mdlCompanyDtls = new mdlCompanyDetails();
            mdlCompanyDtls.compcode = AuditSession.CompanyCode;

            var dtCompanyDetails = blCompanyDetails.getCompanyDetails(mdlCompanyDtls);
            if (dtCompanyDetails.Rows.Count > 0)
            {
                txtESICode.Text = dtCompanyDetails.Rows[0]["esicode"].ToString();
                txtEsidateofCoverage.Text = Convert.ToString(dtCompanyDetails.Rows[0]["esicovdt"]) == "" ? "" : Convert.ToDateTime(dtCompanyDetails.Rows[0]["esicovdt"]).ToString("yyyy-MM-dd");
                txtEsiDateofIndent.Text = Convert.ToString(dtCompanyDetails.Rows[0]["esiinddt"]) == "" ? "" : Convert.ToDateTime(dtCompanyDetails.Rows[0]["esiinddt"]).ToString("yyyy-MM-dd");
                txtLocalOffice.Text = dtCompanyDetails.Rows[0]["esilocal"].ToString();
                txtESIAddress1.Text = dtCompanyDetails.Rows[0]["esiadd1"].ToString();
                txtESIAddress2.Text = dtCompanyDetails.Rows[0]["esiadd2"].ToString();
                txtESIAddress3.Text = dtCompanyDetails.Rows[0]["esiadd3"].ToString();
                txtESICity.Text = dtCompanyDetails.Rows[0]["esicity"].ToString();
                txtESIPin.Text = dtCompanyDetails.Rows[0]["esipin"].ToString();
                txtESIPhone.Text = dtCompanyDetails.Rows[0]["esiph"].ToString();
            }
        }
        protected void btnSaveESIDetails_Click(object sender, EventArgs e)
        {
            lblSucessESIDetails.InnerText = "";
            var mdlCompanyDtls = new mdlCompanyDetails();
            mdlCompanyDtls.CompanyTabDetails = "divESIDetails";
            mdlCompanyDtls.compcode = AuditSession.CompanyCode;
            mdlCompanyDtls.esicode = txtESICode.Text;
            mdlCompanyDtls.esicovdt = txtEsidateofCoverage.Text;
            mdlCompanyDtls.esiinddt = txtEsiDateofIndent.Text;
            mdlCompanyDtls.esilocal = txtLocalOffice.Text;
            mdlCompanyDtls.esiadd1 = txtESIAddress1.Text;
            mdlCompanyDtls.esiadd2 = txtESIAddress2.Text;
            mdlCompanyDtls.esiadd3 = txtESIAddress3.Text;
            mdlCompanyDtls.esicity = txtESICity.Text;
            mdlCompanyDtls.esipin = txtESIPin.Text;
            mdlCompanyDtls.esiph = txtESIPhone.Text;

            var blCompanyDetails = new balCompanyDetails();
            var dtLoginDetails = blCompanyDetails.insertCompanyDetails(mdlCompanyDtls);
            lblSucessESIDetails.InnerText = "ESIDetails Saved Sucessfully ; ";
        }
    }
}