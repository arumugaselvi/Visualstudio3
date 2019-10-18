using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL_Audit.Helper;
using MDL_Audit;

namespace DAL_Audit
{
    public class dalCompanyDetails
    {






        public DataTable insertCompanyDetails(mdlCompanyDetails CompanyDetails)
        {
            SqlParameter[] sqlParams = new SqlParameter[]
                {
                    new SqlParameter("@CompanyTabDetails",CompanyDetails.CompanyTabDetails),

                    new SqlParameter("@compcode",CompanyDetails.compcode),
                    new SqlParameter("@compname",CompanyDetails.compname),
                    new SqlParameter("@NatureOfIndustry",CompanyDetails.NatureOfIndustry),
                    new SqlParameter("@DateOfRegister",CompanyDetails.DateOfRegister),
                    new SqlParameter("@CurrentStatus",CompanyDetails.CurrentStatus),
                    new SqlParameter("@InActiveDate",CompanyDetails.InActiveDate),
                    new SqlParameter("@branch",CompanyDetails.branch),


                    new SqlParameter("@cadd1",CompanyDetails.cadd1),
                    new SqlParameter("@cadd2",CompanyDetails.cadd2),
                    new SqlParameter("@cadd3",CompanyDetails.cadd3),
                    new SqlParameter("@District1",CompanyDetails.District1),
                    new SqlParameter("@Ward1",CompanyDetails.Ward1),
                    new SqlParameter("@ccity",CompanyDetails.ccity),
                    new SqlParameter("@cpin",CompanyDetails.cpin),
                    new SqlParameter("@State1",CompanyDetails.State1),
                    new SqlParameter("@PoliceStation1",CompanyDetails.PoliceStation1),
                    new SqlParameter("@cph",CompanyDetails.cph),
                    new SqlParameter("@cfax",CompanyDetails.cfax),
                    new SqlParameter("@cmobile",CompanyDetails.cmobile),
                    new SqlParameter("@cemail",CompanyDetails.cemail),
                    new SqlParameter("@cweb",CompanyDetails.cweb),
                    new SqlParameter("@NearTown1",CompanyDetails.NearTown1),
                    new SqlParameter("@RevDemarcation1",CompanyDetails.RevDemarcation1),


                    new SqlParameter("@fadd1",CompanyDetails.fadd1),
                    new SqlParameter("@fadd2",CompanyDetails.fadd2),
                    new SqlParameter("@fadd3",CompanyDetails.fadd3),
                    new SqlParameter("@fDistrict",CompanyDetails.fDistrict),
                    new SqlParameter("@fWard",CompanyDetails.fWard),
                    new SqlParameter("@fcity",CompanyDetails.fcity),
                    new SqlParameter("@fpin",CompanyDetails.fpin),
                    new SqlParameter("@fState",CompanyDetails.fState),
                    new SqlParameter("@fPoliceStation",CompanyDetails.fPoliceStation),
                    new SqlParameter("@fph",CompanyDetails.fph),
                    new SqlParameter("@ffax",CompanyDetails.ffax),
                    new SqlParameter("@fmobile",CompanyDetails.fmobile),
                    new SqlParameter("@femail",CompanyDetails.femail),
                    new SqlParameter("@fweb",CompanyDetails.fweb),
                    new SqlParameter("@fNearTown",CompanyDetails.fNearTown),
                    new SqlParameter("@fRevDemarcation",CompanyDetails.fRevDemarcation),


                    new SqlParameter("@pfcode",CompanyDetails.pfcode),
                    new SqlParameter("@edli",CompanyDetails.edli),
                    new SqlParameter("@pfcovdt",CompanyDetails.pfcovdt),
                    new SqlParameter("@pfinddt",CompanyDetails.pfinddt),
                    new SqlParameter("@pflocal",CompanyDetails.pflocal),
                    new SqlParameter("@pfadd1",CompanyDetails.pfadd1),
                    new SqlParameter("@pfadd2",CompanyDetails.pfadd2),
                    new SqlParameter("@pfadd3",CompanyDetails.pfadd3),
                    new SqlParameter("@pfcity",CompanyDetails.pfcity),
                    new SqlParameter("@pfpin",CompanyDetails.pfpin),
                    new SqlParameter("@pfph",CompanyDetails.pfph),


                    new SqlParameter("@esicode",CompanyDetails.esicode),
                    new SqlParameter("@esicovdt",CompanyDetails.esicovdt),
                    new SqlParameter("@esiinddt",CompanyDetails.esiinddt),
                    new SqlParameter("@esilocal",CompanyDetails.esilocal),
                    new SqlParameter("@esiadd1",CompanyDetails.esiadd1),
                    new SqlParameter("@esiadd2",CompanyDetails.esiadd2),
                    new SqlParameter("@esiadd3",CompanyDetails.esiadd3),
                    new SqlParameter("@esicity",CompanyDetails.esicity),
                    new SqlParameter("@esipin",CompanyDetails.esipin),
                    new SqlParameter("@esiph",CompanyDetails.esiph),

                    new SqlParameter("@empname",CompanyDetails.empname),
                    new SqlParameter("@empdesg",CompanyDetails.empdesg),
                    new SqlParameter("@empadd1",CompanyDetails.empadd1),
                    new SqlParameter("@empadd2",CompanyDetails.empadd2),
                    new SqlParameter("@empadd3",CompanyDetails.empadd3),
                    new SqlParameter("@empcity",CompanyDetails.empcity),
                    new SqlParameter("@emppin",CompanyDetails.emppin),
                    new SqlParameter("@empph",CompanyDetails.empph),
                    new SqlParameter("@empfax",CompanyDetails.empfax),
                    new SqlParameter("@empmobile",CompanyDetails.empmobile),
                    new SqlParameter("@empemail",CompanyDetails.empemail),


                    new SqlParameter("@BankAcc1",CompanyDetails.BankAcc1),
                    new SqlParameter("@IfscCode1",CompanyDetails.IfscCode1),
                    new SqlParameter("@BankBranch1",CompanyDetails.BankBranch1),
                    new SqlParameter("@BankAcc2",CompanyDetails.BankAcc2),
                    new SqlParameter("@IfscCode2",CompanyDetails.IfscCode2),
                    new SqlParameter("@BankBranch2",CompanyDetails.BankBranch2),
                    new SqlParameter("@ITPAN",CompanyDetails.ITPAN),
                    new SqlParameter("@ITWard",CompanyDetails.ITWard),
                    new SqlParameter("@CompType",CompanyDetails.CompType),
        };

            var dt = new DataTable();
            using (SqlDataReader sqldrMedia = SqlHelper.ExecuteReader(SqlHelper.ConnectionString, CommandType.StoredProcedure, "InsertUpdateCompanyDetails", sqlParams))
            {
                dt.Load(sqldrMedia);
            }
            return dt;
        }


        public DataTable getCompanyDetails(mdlCompanyDetails CompanyDetails)
        {
            SqlParameter[] sqlParams = new SqlParameter[]
                {
                    new SqlParameter("@compcode",CompanyDetails.compcode),

        };

            var dt = new DataTable();
            using (SqlDataReader sqldrMedia = SqlHelper.ExecuteReader(SqlHelper.ConnectionString, CommandType.StoredProcedure, "GetCompanyDetails", sqlParams))
            {
                dt.Load(sqldrMedia);
            }
            return dt;
        }


      


    }
}
