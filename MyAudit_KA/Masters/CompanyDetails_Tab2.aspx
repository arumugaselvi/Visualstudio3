<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyDetails_Tab2.aspx.cs" Inherits="MyAudit_KA.Masters.CompanyDetails_Tab1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../bootstrap-4.3.1-dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../CustomStyle/Customstyle.css" rel="stylesheet" />
    <script type="text/javascript">
        function loader()
        {
            //alert('1');
            document.getElementById('load').style.display = "";
        }
        document.onreadystatechange = function () {
            var state = document.readyState
            if (state == 'complete') {
                //document.getElementById('load').style.visibility = "hidden";
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="load" runat="server" style="display:none;"></div>
        <div class="col-lg-12">
            <div class="row">
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">Address:</label>

                        <asp:TextBox ID="txtCompanyAddress1" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                    </div>

                </div>
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">&nbsp;</label>

                        <asp:TextBox ID="txtCompanyAddress2" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                    </div>

                </div>
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">&nbsp;</label>

                        <asp:TextBox ID="txtCompnyAddress3" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                    </div>

                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">District:</label>

                        <asp:TextBox ID="txtDistrict" runat="server" class="form-control" MaxLength="100"></asp:TextBox>
                    </div>

                </div>
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">Municipality/Ward</label>

                        <asp:TextBox ID="txtWard" runat="server" class="form-control" MaxLength="100"></asp:TextBox>
                    </div>

                </div>
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">City</label>

                        <asp:TextBox ID="txtCity" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                    </div>

                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">Pincode:</label>

                        <asp:TextBox ID="txtpin" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                    </div>

                </div>
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">State</label>

                        <asp:TextBox ID="txtState" runat="server" class="form-control" MaxLength="100"></asp:TextBox>
                    </div>

                </div>
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">PoliceStation</label>

                        <asp:TextBox ID="txtPoliceStation" runat="server" class="form-control" MaxLength="100"></asp:TextBox>
                    </div>

                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">Phone:</label>

                        <asp:TextBox ID="txtphone" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                    </div>

                </div>
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">Fax</label>

                        <asp:TextBox ID="txtFax" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                    </div>

                </div>
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">Mobile</label>

                        <asp:TextBox ID="txtMobile" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                    </div>

                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">Email:</label>

                        <asp:TextBox ID="txtCompanyEmail" runat="server" class="form-control" MaxLength="200"></asp:TextBox>
                    </div>

                </div>
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">Website</label>

                        <asp:TextBox ID="txtComapnyWebsite" runat="server" class="form-control" MaxLength="200"></asp:TextBox>
                    </div>

                </div>
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">Name of Town/Revenue Village</label>

                        <asp:TextBox ID="txtComapnynameoftown" runat="server" class="form-control" MaxLength="100"></asp:TextBox>
                    </div>

                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">Revenue Demarcation/Hudbast No</label>

                        <asp:TextBox ID="txtCompanyRevenue" runat="server" class="form-control" MaxLength="100"></asp:TextBox>
                    </div>

                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">
                    <%-- start --%>
                    <div class="form-group">
                        <asp:Button ID="btnSaveCompanyAddress" CssClass="btn-success"  ValidationGroup="SaveCompanyAddress" runat="server" Text="Save" OnClick="btnSaveCompanyAddress_Click"  OnClientClick="loader()"/>
                    </div>
                    <%-- end --%>
                </div>
                <label runat="server" id="lblSucessCompanyAddress" style="color: forestgreen"></label>
                <label runat="server" id="lblErrorCompanyAddress" style="color: red"></label>
            </div>
        </div>
    </form>
</body>
</html>
