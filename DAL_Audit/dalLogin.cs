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
    public class dalLogin
    {
        public DataTable getUserDetails(loginMDL userDetails)
        {
            SqlParameter[] sqlParams = new SqlParameter[]
                {
                    new SqlParameter("@username",userDetails.UserName),
                    new SqlParameter("@password", userDetails.Password)
                };

            var dt = new DataTable();
            using (SqlDataReader sqldrMedia = SqlHelper.ExecuteReader(SqlHelper.ConnectionString, CommandType.StoredProcedure, "GetUserDetails", sqlParams))
            {
                dt.Load(sqldrMedia);
            }
            return dt;
        }
    }
}
