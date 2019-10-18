<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="MyAudit.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        input[type=submit] {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%;">
                <tr style="height: 40px; background-color: cadetblue;">
                    <td style="width: 80%;" align="center">
                        <div style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-weight: 800; color: white;">
                            Admin Dashboard
                            <asp:Label ID="lblusername" runat="server" Style="color: white; float: right; margin-right: 20px;"></asp:Label>
                        </div>
                    </td>
                    <td style="width: 20%;" align="center">
                        <asp:Button ID="btn_logout" Text="Log out" runat="server" OnClick="btn_logout_click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <table style="width: 50%; border: 2px solid cadetblue; border-radius: 20px;">
                            <tr>
                                <td align="center" style="border-bottom: 2px solid cadetblue">
                                    <b style="color: cadetblue">Master Data</b>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="border-bottom: 2px solid cadetblue">
                                    <asp:Button ID="btn_companymaster" runat="server" Text="Company Master" OnClick="btn_companymaster_click" Style="background-color: cadetblue" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="border-bottom: 2px solid cadetblue">
                                    <asp:Button ID="btn_Employeemaster" runat="server" Text="Employee Master" OnClick="btn_Employeemaster_click" Style="background-color: cadetblue" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
