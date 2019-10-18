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
   public class balCompanyDetails
    {
        public static readonly dalCompanyDetails dlCompanyDetails = new dalCompanyDetails();
        public DataTable insertCompanyDetails(mdlCompanyDetails CompanyDetails)
        {
            return dlCompanyDetails.insertCompanyDetails( CompanyDetails);
        }


        public DataTable getCompanyDetails(mdlCompanyDetails CompanyDetails)
        {
            return dlCompanyDetails.getCompanyDetails(CompanyDetails);
        }
    }

    
}
