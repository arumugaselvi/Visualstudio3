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
    public partial class CompanyDetails_Tab7 : System.Web.UI.Page
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

              
                txtAccountNo1.Text = dtCompanyDetails.Rows[0]["BankAcc1"].ToString();
                txtIfscCode1.Text = dtCompanyDetails.Rows[0]["IfscCode1"].ToString();
                txtnameandbranch1.Text = dtCompanyDetails.Rows[0]["BankBranch1"].ToString();
                txtaccountno2.Text = dtCompanyDetails.Rows[0]["BankAcc2"].ToString();
                txtIfsccode2.Text = dtCompanyDetails.Rows[0]["IfscCode2"].ToString();
                txtnameandbranch2.Text = dtCompanyDetails.Rows[0]["BankBranch2"].ToString();
                txtItnum.Text = dtCompanyDetails.Rows[0]["ITPAN"].ToString();
                txtWdetails.Text = dtCompanyDetails.Rows[0]["ITWard"].ToString();

                if (dtCompanyDetails.Rows[0]["CompType"].ToString() != "")
                {
                    ddlPublic.SelectedItem.Text = dtCompanyDetails.Rows[0]["CompType"].ToString();
                }


            }
        }

        protected void btnsaveadditiondetails_Click(object sender, EventArgs e)
        {
            var mdlCompanyDtls = new mdlCompanyDetails();
            mdlCompanyDtls.CompanyTabDetails = "divAdditonalDetails";
            mdlCompanyDtls.compcode = AuditSession.CompanyCode;
            


            mdlCompanyDtls.BankAcc1 = txtAccountNo1.Text;
            mdlCompanyDtls.IfscCode1 = txtIfscCode1.Text;
            mdlCompanyDtls.BankBranch1 = txtnameandbranch1.Text;
            mdlCompanyDtls.BankAcc2 = txtaccountno2.Text;
            mdlCompanyDtls.IfscCode2 = txtIfsccode2.Text;
            mdlCompanyDtls.BankBranch2 = txtnameandbranch2.Text;
            mdlCompanyDtls.ITPAN = txtItnum.Text;
            mdlCompanyDtls.ITWard = txtWdetails.Text;
            mdlCompanyDtls.CompType = ddlPublic.SelectedItem.Text;


            var blCompanyDetails = new balCompanyDetails();
            var dtCompanyDetails = blCompanyDetails.insertCompanyDetails(mdlCompanyDtls);
            if (dtCompanyDetails.Rows.Count > 0)
            {
                lblSucessAdditonalDetails.InnerText = "Employer Additonal Details Saved Sucessfully ; ";
            }
        }
    }
}