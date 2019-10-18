<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Main.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="MyAudit_KA.Dashboard.AdminDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        input[type=submit] {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .dashboard-head {
            padding: 1rem 1rem;
            padding-top: 1.5rem;
            margin-bottom: 1rem;
            background-color: #e9ecef;
            border-radius: .3rem;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

        <div class="dashboard-head text-center">
            <h2>Admin Dashboard</h2>
        </div>
        <div class="container">
            <div class="row">

                <div class="col-sm-4">
                    <div class="panel panel-primary text-center">
                        <div class="panel-body">
                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="panel panel-primary text-center">

                        <div class="panel-body">
                            <br />
                            <asp:Button ID="btn_companymaster" runat="server" CssClass="btn-success" Text="Company Master" OnClick="btn_companymaster_click" />
                            <br />
                            <br />
                            <asp:Button ID="btn_Employeemaster" runat="server" CssClass="btn-success" Text="Employee Master" OnClick="btn_Employeemaster_click" />



                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="panel panel-primary text-center">

                        <div class="panel-body">
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <br>
        <br>
    </div>
</asp:Content>
