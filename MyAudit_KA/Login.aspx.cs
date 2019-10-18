using BAL_Audit;
using MDL_Audit;
using MyAudit_KA.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyAudit
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var loginSession = new AuditSession();

            }
        }
        protected void btn_login_click(object sender, EventArgs e)
        {
            var loginSession = new AuditSession();
            loginSession.loginDetails = new string[4];
            var userDetails = new loginMDL();
            userDetails.UserName = txt_username.Text;
            userDetails.Password = txt_password.Text;
            var blLogin = new balLogin();
            var dtLoginDetails = blLogin.getUserDetails(userDetails);
            if (dtLoginDetails.Rows.Count > 0)
            {
                loginSession.loginDetails[0] = Convert.ToString(dtLoginDetails.Rows[0]["UserId"]);
                loginSession.loginDetails[1] = Convert.ToString(dtLoginDetails.Rows[0]["UserName"]);
                loginSession.loginDetails[2] = Convert.ToString(dtLoginDetails.Rows[0]["Password"]);
                loginSession.loginDetails[3] = Convert.ToString(dtLoginDetails.Rows[0]["isAdmin"]);
                Response.Redirect("~/Dashboard/AdminDashboard.aspx");
            }
            else
            {
                lbllogin.Text = "Username and password wrong";
                lbllogin.Style.Add("color", "red");
            }
            //loginSession.loginDetails[0] = txt_username.Text;
            //loginSession.loginDetails[1] = txt_password.Text;
            //loginSession.loginDetails[2] = "Admin";
            //Session["username"] = txt_username.Text;
            
        }
    }
}