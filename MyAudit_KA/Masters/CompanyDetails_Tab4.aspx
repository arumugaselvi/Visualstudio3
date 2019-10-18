<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyDetails_Tab4.aspx.cs" Inherits="MyAudit_KA.Masters.CompanyDetails_Tab4" %>

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
                        <label for="email">PF Code:</label>
                        <asp:TextBox ID="txtPFCode" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <label for="email">Date of Coverage</label>
                        <asp:TextBox ID="txt_Dateofcoverage" runat="server" class="form-control" TextMode="Date"></asp:TextBox>
                    </div>

                </div>
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">Date of Indent:</label>

                        <asp:TextBox ID="txt_DateofIndent" runat="server" class="form-control" TextMode="Date"></asp:TextBox>
                    </div>

                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">No EDLI:</label>

                        <asp:CheckBox ID="chk_NoEDLI" runat="server" />
                    </div>

                </div>
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">Regional Off.</label>

                        <asp:TextBox ID="txt_RegionalOffice" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                    </div>

                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">Address:</label>

                        <asp:TextBox ID="txtpfaddress1" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                    </div>

                </div>
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">&nbsp;</label>

                        <asp:TextBox ID="txtpfaddress2" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                    </div>

                </div>
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">&nbsp;</label>

                        <asp:TextBox ID="txtpfaddress3" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                    </div>

                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">City:</label>

                        <asp:TextBox ID="txtPfCity" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                    </div>

                </div>
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">Pin Code</label>

                        <asp:TextBox ID="txtpfpincode" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                    </div>

                </div>
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">Phone</label>

                        <asp:TextBox ID="txtpfphone" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                    </div>

                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">
                    <%-- start --%>
                    <div class="form-group">
                        <asp:Button ID="btnSaveProvidentFundDetails" CssClass="btn-success"  ValidationGroup="SaveProvidentFundDetails" runat="server" Text="Save" OnClick="btnSaveProvidentFundDetails_Click"  OnClientClick="loader()" />
                    </div>
                    <%-- end --%>
                </div>
                <label runat="server" id="lblSucessProvidentFundDetails" style="color: forestgreen"></label>
                <label runat="server" id="lblErrorProvidentFundDetails" style="color: red"></label>
            </div>
        </div>
    </form>
</body>
</html>
