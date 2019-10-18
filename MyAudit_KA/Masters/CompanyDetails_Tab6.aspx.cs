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
    public partial class CompanyDetails_Tab6 : System.Web.UI.Page
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
                //txtEmployerName.Text
                //    txtEmployerDesignation.Text
                //    txtEmployerEmail.Text
                //    txtEmployerAddress1.Text
                //    txtEmployerAddress2.Text
                //    txtEmployerAddress3.Text
                //    txtemployersCity.Text
                //    txtEmployerPincode.Text
                //    txtEmployerPhone.Text
                //    txtEmployerFax.Text
                //    txtEmployermobile.Text
                txtEmployerName.Text = dtCompanyDetails.Rows[0]["empname"].ToString();
                txtEmployerDesignation.Text = dtCompanyDetails.Rows[0]["empdesg"].ToString();
                txtEmployerEmail.Text = dtCompanyDetails.Rows[0]["empadd1"].ToString();
                txtEmployerAddress1.Text = dtCompanyDetails.Rows[0]["empadd2"].ToString();
                txtEmployerAddress2.Text = dtCompanyDetails.Rows[0]["empadd3"].ToString();
                txtEmployerAddress3.Text = dtCompanyDetails.Rows[0]["empcity"].ToString();
                txtemployersCity.Text = dtCompanyDetails.Rows[0]["emppin"].ToString();
                txtEmployerPincode.Text = dtCompanyDetails.Rows[0]["empph"].ToString();
                txtEmployerPhone.Text = dtCompanyDetails.Rows[0]["empfax"].ToString();
                txtEmployerFax.Text = dtCompanyDetails.Rows[0]["empmobile"].ToString();
                txtEmployermobile.Text = dtCompanyDetails.Rows[0]["empemail"].ToString();

            }
        }

        protected void btnSaveEmployerPersonalDetails_Click(object sender, EventArgs e)
        {

            var mdlCompanyDtls = new mdlCompanyDetails();
            mdlCompanyDtls.CompanyTabDetails = "divEmployerPersonalDetails";
            mdlCompanyDtls.compcode = AuditSession.CompanyCode;



            mdlCompanyDtls.empname = txtEmployerName.Text ;
            mdlCompanyDtls.empdesg = txtEmployerDesignation.Text ;
            mdlCompanyDtls.empadd1 = txtEmployerEmail.Text ;
            mdlCompanyDtls.empadd2 = txtEmployerAddress1.Text ;
            mdlCompanyDtls.empadd3 = txtEmployerAddress2.Text ;
            mdlCompanyDtls.empcity = txtEmployerAddress3.Text ;
            mdlCompanyDtls.emppin = txtemployersCity.Text ;
            mdlCompanyDtls.empph = txtEmployerPincode.Text ;
            mdlCompanyDtls.empfax = txtEmployerPhone.Text ;
            mdlCompanyDtls.empmobile = txtEmployerFax.Text ;
            mdlCompanyDtls.empemail = txtEmployermobile.Text ;


            var blCompanyDetails = new balCompanyDetails();
            var dtLoginDetails = blCompanyDetails.insertCompanyDetails(mdlCompanyDtls);            

            lblSucessEmployerPersonalDetails.InnerText = "Employer Personal Details Saved Sucessfully ; ";
        }

    }
}