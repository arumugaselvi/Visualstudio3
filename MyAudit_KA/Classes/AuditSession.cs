using System;
using System.Web;

namespace MyAudit_KA.Classes
{
    public class AuditSession
    {
        public string[] loginDetails
        {
            get
            {
                if (HttpContext.Current.Session["loginDetails"] != null)
                {
                    return HttpContext.Current.Session["loginDetails"] as string[];
                }
                return null;
            }
            set
            {
                HttpContext.Current.Session["loginDetails"] = value;
            }
        }

        public static string CompanyCode
        {
            get
            {
                object value = HttpContext.Current.Session["CompanyCode"];
                return value == null ? "" : (string)value;
            }
            set
            {
                HttpContext.Current.Session["CompanyCode"] = value;
            }
        }
    }
}