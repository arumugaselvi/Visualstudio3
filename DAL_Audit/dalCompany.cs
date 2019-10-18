using DAL_Audit.Helper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_Audit
{
    public class dalCompany
    {
        public DataTable getCompanyData()
        {
            SqlParameter[] sqlParams = null;
            var dt = new DataTable();
            using (SqlDataReader sqldrMedia = SqlHelper.ExecuteReader(SqlHelper.ConnectionString, CommandType.StoredProcedure, "GetCompanyMaster", sqlParams))
            {
                //while (sqldrMedia.Read())
                //{
                dt.Load(sqldrMedia);
                //}
            }
            return dt;
        }
    }
}
