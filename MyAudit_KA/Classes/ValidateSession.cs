using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyAudit_KA.Classes
{
    public class ValidateSession
    {
        public void CheckSessionStatus(AuditSession objSession)
        {
            if (objSession.loginDetails != null)
            {

            }
            else
            {
                HttpContext.Current.Response.Redirect("~/Login.aspx", true);
            }
        }
    }
}