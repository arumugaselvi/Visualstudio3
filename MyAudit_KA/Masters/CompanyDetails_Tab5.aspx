<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyDetails_Tab5.aspx.cs" Inherits="MyAudit_KA.Masters.CompanyDetails_Tab5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../bootstrap-4.3.1-dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../CustomStyle/Customstyle.css" rel="stylesheet" />
    <script type="text/javascript">
        function loader() {
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
        <div id="load" runat="server" style="display: none;"></div>
        <div class="col-lg-12">
            <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">
                        <label for="email">ESI Code:</label>
                        <asp:TextBox ID="txtESICode" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <label for="email">Date of Coverage</label>
                        <asp:TextBox ID="txtEsidateofCoverage" runat="server" class="form-control" TextMode="Date"></asp:TextBox>
                    </div>

                </div>
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">Date of Indent:</label>

                        <asp:TextBox ID="txtEsiDateofIndent" runat="server" class="form-control" TextMode="Date" OnTextChanged="txtEsiDateofIndent_TextChanged"></asp:TextBox>
                    </div>

                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">Local Office</label>

                        <asp:TextBox ID="txtLocalOffice" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                    </div>

                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">Address:</label>

                        <asp:TextBox ID="txtESIAddress1" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                    </div>

                </div>
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">&nbsp;</label>

                        <asp:TextBox ID="txtESIAddress2" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                    </div>

                </div>
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">&nbsp;</label>

                        <asp:TextBox ID="txtESIAddress3" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                    </div>

                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">City:</label>

                        <asp:TextBox ID="txtESICity" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                    </div>

                </div>
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">Pin Code</label>

                        <asp:TextBox ID="txtESIPin" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                    </div>

                </div>
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">Phone</label>

                        <asp:TextBox ID="txtESIPhone" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                    </div>

                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">

                    <div class="form-group">
                        <asp:Button ID="btnSaveESIDetails" CssClass="btn-success" ValidationGroup="SaveESIDetails" runat="server" Text="Save" OnClick="btnSaveESIDetails_Click"  OnClientClick="loader()"/>
                    </div>

                </div>
                <label runat="server" id="lblSucessESIDetails" style="color: forestgreen"></label>
                <label runat="server" id="lblErrorESIDetails" style="color: red"></label>
            </div>
        </div>
    </form>
</body>
</html>
