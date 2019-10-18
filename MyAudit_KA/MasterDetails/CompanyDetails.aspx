<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyDetails.aspx.cs" Inherits="MyAudit.CompanyDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Company Details</title>
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
                            Company Details
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
                        <table style="width: 80%; border: 2px solid cadetblue; border-radius: 20px;">

                            <tr>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
