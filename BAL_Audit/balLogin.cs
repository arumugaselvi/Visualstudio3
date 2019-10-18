using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL_Audit;
using MDL_Audit;

namespace BAL_Audit
{
    public class balLogin
    {
        public static readonly dalLogin dlLogin = new dalLogin();
        public DataTable getUserDetails(loginMDL userDetails)
        {
            return dlLogin.getUserDetails(userDetails);
        }
    }
}
