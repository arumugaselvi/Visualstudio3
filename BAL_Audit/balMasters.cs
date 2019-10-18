using DAL_Audit;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BAL_Audit
{
    public class balMasters
    {
        public static readonly dalCompany dlobj = new dalCompany();
        public DataTable getCompanyData()
        {
            return dlobj.getCompanyData();
        }
    }
}
