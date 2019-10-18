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
    public partial class CompanyDetails_Tab3 : System.Web.UI.Page
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
                txtFaddress1.Text = dtCompanyDetails.Rows[0]["fadd1"].ToString();
                txtFaddress2.Text = dtCompanyDetails.Rows[0]["fadd2"].ToString();
                txtFaddress3.Text = dtCompanyDetails.Rows[0]["fadd3"].ToString();
                txtFDistric.Text = dtCompanyDetails.Rows[0]["fDistrict"].ToString();
                txtFWard.Text = dtCompanyDetails.Rows[0]["fWard"].ToString();
                txtFcity.Text = dtCompanyDetails.Rows[0]["fcity"].ToString();
                txtFPincode.Text = dtCompanyDetails.Rows[0]["fpin"].ToString();
                txtFState.Text = dtCompanyDetails.Rows[0]["fState"].ToString();
                txtFPolice.Text = dtCompanyDetails.Rows[0]["fPoliceStation"].ToString();
                txtFphone.Text = dtCompanyDetails.Rows[0]["fph"].ToString();
                txtFFax.Text = dtCompanyDetails.Rows[0]["ffax"].ToString();
                txtFMobile.Text = dtCompanyDetails.Rows[0]["fmobile"].ToString();
                txtFemail.Text = dtCompanyDetails.Rows[0]["femail"].ToString();
                txtFwebsite.Text = dtCompanyDetails.Rows[0]["fweb"].ToString();
                txtFVillage.Text = dtCompanyDetails.Rows[0]["fNearTown"].ToString();
                txtFRevenue.Text = dtCompanyDetails.Rows[0]["fRevDemarcation"].ToString();
            }
        }
        protected void btnSaveFactoryAddress_Click(object sender, EventArgs e)
        {

            lblSucessFactoryAddress.InnerText = "";
            var mdlCompanyDtls = new mdlCompanyDetails();
            var blCompanyDetails = new balCompanyDetails();

            mdlCompanyDtls.CompanyTabDetails = "divFactoryAddress";
            mdlCompanyDtls.compcode = AuditSession.CompanyCode;
            mdlCompanyDtls.fadd1 = txtFaddress1.Text;
            mdlCompanyDtls.fadd2 = txtFaddress2.Text;
            mdlCompanyDtls.fadd3 = txtFaddress3.Text;
            mdlCompanyDtls.fDistrict = txtFDistric.Text;
            mdlCompanyDtls.fWard = txtFWard.Text;
            mdlCompanyDtls.fcity = txtFcity.Text;
            mdlCompanyDtls.fpin = txtFPincode.Text;
            mdlCompanyDtls.fState = txtFState.Text;
            mdlCompanyDtls.fPoliceStation = txtFPolice.Text;
            mdlCompanyDtls.fph = txtFphone.Text;
            mdlCompanyDtls.ffax = txtFFax.Text;
            mdlCompanyDtls.fmobile = txtFMobile.Text;
            mdlCompanyDtls.femail = txtFemail.Text;
            mdlCompanyDtls.fweb = txtFwebsite.Text;
            mdlCompanyDtls.fNearTown = txtFVillage.Text;
            mdlCompanyDtls.fRevDemarcation = txtFRevenue.Text;
            

            var dtLoginDetails = blCompanyDetails.insertCompanyDetails(mdlCompanyDtls);
            lblSucessFactoryAddress.InnerText = "Factory Adress Saved Sucessfully ; ";

        }
    }
}