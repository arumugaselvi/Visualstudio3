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
    public partial class CompanyDetails_Tab1 : System.Web.UI.Page
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
                txtCompanyAddress1.Text = dtCompanyDetails.Rows[0]["cadd1"].ToString();
                txtCompanyAddress2.Text = dtCompanyDetails.Rows[0]["cadd2"].ToString();
                txtCompnyAddress3.Text = dtCompanyDetails.Rows[0]["cadd3"].ToString();
                txtDistrict.Text = dtCompanyDetails.Rows[0]["District1"].ToString();
                txtWard.Text = dtCompanyDetails.Rows[0]["Ward1"].ToString();
                txtCity.Text = dtCompanyDetails.Rows[0]["ccity"].ToString();
                txtpin.Text = dtCompanyDetails.Rows[0]["cpin"].ToString();
                txtState.Text = dtCompanyDetails.Rows[0]["State1"].ToString();
                txtPoliceStation.Text = dtCompanyDetails.Rows[0]["PoliceStation1"].ToString();
                txtphone.Text = dtCompanyDetails.Rows[0]["cph"].ToString();
                txtFax.Text = dtCompanyDetails.Rows[0]["cfax"].ToString();
                txtMobile.Text = dtCompanyDetails.Rows[0]["cmobile"].ToString();
                txtCompanyEmail.Text = dtCompanyDetails.Rows[0]["cemail"].ToString();
                txtComapnyWebsite.Text = dtCompanyDetails.Rows[0]["cweb"].ToString();
                txtComapnynameoftown.Text = dtCompanyDetails.Rows[0]["NearTown1"].ToString();
                txtCompanyRevenue.Text = dtCompanyDetails.Rows[0]["RevDemarcation1"].ToString();
            }
        }

        protected void btnSaveCompanyAddress_Click(object sender, EventArgs e)
        {
            //load.Style.Add("dispaly", "");
            valSession.CheckSessionStatus(objSession);
            lblSucessCompanyAddress.InnerText = "";
            var mdlCompanyDtls = new mdlCompanyDetails();
            mdlCompanyDtls.CompanyTabDetails = "divCompanyAddress";
            mdlCompanyDtls.compcode = AuditSession.CompanyCode; 
            mdlCompanyDtls.cadd1 = txtCompanyAddress1.Text;
            mdlCompanyDtls.cadd2 = txtCompanyAddress2.Text;
            mdlCompanyDtls.cadd3 = txtCompnyAddress3.Text;
            mdlCompanyDtls.District1 = txtDistrict.Text;
            mdlCompanyDtls.Ward1 = txtWard.Text;
            mdlCompanyDtls.ccity = txtCity.Text;
            mdlCompanyDtls.cpin = txtpin.Text;
            mdlCompanyDtls.State1 = txtState.Text;
            mdlCompanyDtls.PoliceStation1 = txtPoliceStation.Text;
            mdlCompanyDtls.cph = txtphone.Text;
            mdlCompanyDtls.cfax = txtFax.Text;
            mdlCompanyDtls.cmobile = txtMobile.Text;
            mdlCompanyDtls.cemail = txtCompanyEmail.Text;
            mdlCompanyDtls.cweb = txtComapnyWebsite.Text;
            mdlCompanyDtls.NearTown1 = txtComapnynameoftown.Text;
            mdlCompanyDtls.RevDemarcation1 = txtCompanyRevenue.Text;
            var blCompanyDetails = new balCompanyDetails();
            var dtLoginDetails = blCompanyDetails.insertCompanyDetails(mdlCompanyDtls);
            adddatatofield();
            lblSucessCompanyAddress.InnerText = "Company Adress Saved Sucessfully ; ";
        }

    }
}