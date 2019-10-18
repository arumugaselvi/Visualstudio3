using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MDL_Audit
{
    public class mdlCompanyDetails:loginMDL
    {


        public string CompanyTabDetails { get; set; }
        //Company Details
        public string compcode { get; set; }
        public string compname { get; set; }
        public string NatureOfIndustry { get; set; }
        public string DateOfRegister { get; set; }
        public string CurrentStatus { get; set; }
        public string InActiveDate { get; set; }
        public bool branch { get; set; }

        //Company Address
        public string cadd1 { get; set; }
        public string cadd2 { get; set; }
        public string cadd3 { get; set; }
        public string District1 { get; set; }
        public string Ward1 { get; set; }
        public string ccity { get; set; }
        public string cpin { get; set; }
        public string State1 { get; set; }
        public string PoliceStation1 { get; set; }
        public string cph { get; set; }
        public string cfax { get; set; }
        public string cmobile { get; set; }
        public string cemail { get; set; }
        public string cweb { get; set; }
        public string NearTown1 { get; set; }
        public string RevDemarcation1 { get; set; }

        //Factory Address
        public string fadd1 { get; set; }
        public string fadd2 { get; set; }
        public string fadd3 { get; set; }
        public string fDistrict { get; set; }
        public string fWard { get; set; }
        public string fcity { get; set; }
        public string fpin { get; set; }
        public string fState { get; set; }
        public string fPoliceStation { get; set; }
        public string fph { get; set; }
        public string ffax { get; set; }
        public string fmobile { get; set; }
        public string femail { get; set; }
        public string fweb { get; set; }
        public string fNearTown { get; set; }
        public string fRevDemarcation { get; set; }

        //Provident Fund Details
        public string pfcode { get; set; }
        public bool edli { get; set; }
        public string pfcovdt { get; set; }
        public string pfinddt { get; set; }
        public string pflocal { get; set; }
        public string pfadd1 { get; set; }
        public string pfadd2 { get; set; }
        public string pfadd3 { get; set; }
        public string pfcity { get; set; }
        public string pfpin { get; set; }
        public string pfph { get; set; }



        //ESI Details
        public string esicode { get; set; }
        public string esicovdt { get; set; }
        public string esiinddt { get; set; }
        public string esilocal { get; set; }
        public string esiadd1 { get; set; }
        public string esiadd2 { get; set; }
        public string esiadd3 { get; set; }
        public string esicity { get; set; }
        public string esipin { get; set; }
        public string esiph { get; set; }


        //employee
        public string empname { get; set; }
        public string empdesg { get; set; }
        public string empadd1 { get; set; }
        public string empadd2 { get; set; }
        public string empadd3 { get; set; }
        public string empcity { get; set; }
        public string emppin { get; set; }
        public string empph { get; set; }
        public string empfax { get; set; }
        public string empmobile { get; set; }
        public string empemail { get; set; }



        //
        public string BankAcc1 { get; set; }
        public string IfscCode1 { get; set; }
        public string BankBranch1 { get; set; }
        public string BankAcc2 { get; set; }
        public string IfscCode2 { get; set; }
        public string BankBranch2 { get; set; }
        public string ITPAN { get; set; }
        public string ITWard { get; set; }
        public string CompType { get; set; }


    }
}
