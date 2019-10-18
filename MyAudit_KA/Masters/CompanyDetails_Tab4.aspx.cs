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
    public partial class CompanyDetails_Tab4 : System.Web.UI.Page
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
                txtPFCode.Text = dtCompanyDetails.Rows[0]["pfcode"].ToString();
                chk_NoEDLI.Checked = Convert.ToString(dtCompanyDetails.Rows[0]["edli"]) == "" ? false : Convert.ToBoolean(dtCompanyDetails.Rows[0]["edli"].ToString());
                txt_Dateofcoverage.Text = Convert.ToString(dtCompanyDetails.Rows[0]["pfcovdt"]) == "" ? "" : Convert.ToDateTime(dtCompanyDetails.Rows[0]["pfcovdt"]).ToString("yyyy-MM-dd");
                txt_DateofIndent.Text = Convert.ToString(dtCompanyDetails.Rows[0]["pfinddt"]) == "" ? "" : Convert.ToDateTime(dtCompanyDetails.Rows[0]["pfinddt"]).ToString("yyyy-MM-dd");
                txt_RegionalOffice.Text = dtCompanyDetails.Rows[0]["pflocal"].ToString();
                txtpfaddress1.Text = dtCompanyDetails.Rows[0]["pfadd1"].ToString();
                txtpfaddress2.Text = dtCompanyDetails.Rows[0]["pfadd2"].ToString();
                txtpfaddress3.Text = dtCompanyDetails.Rows[0]["pfadd3"].ToString();
                txtPfCity.Text = dtCompanyDetails.Rows[0]["pfcity"].ToString();
                txtpfpincode.Text = dtCompanyDetails.Rows[0]["pfpin"].ToString();
                txtpfphone.Text = dtCompanyDetails.Rows[0]["pfph"].ToString();
            }
        }
        protected void btnSaveProvidentFundDetails_Click(object sender, EventArgs e)
        {
            lblSucessProvidentFundDetails.InnerText = "";
            var mdlCompanyDtls = new mdlCompanyDetails();
            mdlCompanyDtls.CompanyTabDetails = "divProvidentFundDetails";
            mdlCompanyDtls.compcode = AuditSession.CompanyCode;
            mdlCompanyDtls.pfcode = txtPFCode.Text;
            mdlCompanyDtls.edli = chk_NoEDLI.Checked;
            mdlCompanyDtls.pfcovdt = txt_Dateofcoverage.Text;
            mdlCompanyDtls.pfinddt = txt_DateofIndent.Text;
            mdlCompanyDtls.pflocal = txt_RegionalOffice.Text;
            mdlCompanyDtls.pfadd1 = txtpfaddress1.Text;
            mdlCompanyDtls.pfadd2 = txtpfaddress2.Text;
            mdlCompanyDtls.pfadd3 = txtpfaddress3.Text;
            mdlCompanyDtls.pfcity = txtPfCity.Text;
            mdlCompanyDtls.pfpin = txtpfpincode.Text;
            mdlCompanyDtls.pfph = txtpfphone.Text;

            var blCompanyDetails = new balCompanyDetails();
            var dtLoginDetails = blCompanyDetails.insertCompanyDetails(mdlCompanyDtls);
            lblSucessProvidentFundDetails.InnerText = "Provident Fund Details Saved Sucessfully ; ";
        }
    }
}