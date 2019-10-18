<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyDetails_Tab3.aspx.cs" Inherits="MyAudit_KA.Masters.CompanyDetails_Tab3" %>

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

                        <asp:TextBox ID="txtFaddress1" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                    </div>

                </div>
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">&nbsp;</label>

                        <asp:TextBox ID="txtFaddress2" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                    </div>

                </div>
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">&nbsp;</label>

                        <asp:TextBox ID="txtFaddress3" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                    </div>

                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">Dstrict:</label>

                        <asp:TextBox ID="txtFDistric" runat="server" class="form-control" MaxLength="100"></asp:TextBox>
                    </div>

                </div>
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">Municipality/Ward</label>

                        <asp:TextBox ID="txtFWard" runat="server" class="form-control" MaxLength="100"></asp:TextBox>
                    </div>

                </div>
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">City</label>

                        <asp:TextBox ID="txtFcity" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                    </div>

                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">Pincode:</label>

                        <asp:TextBox ID="txtFPincode" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                    </div>

                </div>
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">State</label>

                        <asp:TextBox ID="txtFState" runat="server" class="form-control" MaxLength="100"></asp:TextBox>
                    </div>

                </div>
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">PoliceStation</label>

                        <asp:TextBox ID="txtFPolice" runat="server" class="form-control" MaxLength="100"></asp:TextBox>
                    </div>

                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">Phone:</label>

                        <asp:TextBox ID="txtFphone" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                    </div>

                </div>
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">Fax</label>

                        <asp:TextBox ID="txtFFax" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                    </div>

                </div>
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">Mobile</label>

                        <asp:TextBox ID="txtFMobile" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                    </div>

                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">Email:</label>

                        <asp:TextBox ID="txtFemail" runat="server" class="form-control" MaxLength="200"></asp:TextBox>
                    </div>

                </div>
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">Website</label>

                        <asp:TextBox ID="txtFwebsite" runat="server" class="form-control" MaxLength="200"></asp:TextBox>
                    </div>

                </div>
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">Name of Town/Revenue Village</label>

                        <asp:TextBox ID="txtFVillage" runat="server" class="form-control" MaxLength="100"></asp:TextBox>
                    </div>

                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">

                    <div class="form-group">
                        <label for="email">Revenue Demarcation/Hudbast No</label>

                        <asp:TextBox ID="txtFRevenue" runat="server" class="form-control" MaxLength="100"></asp:TextBox>
                    </div>

                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">
                    <%-- start --%>
                    <div class="form-group">
                        <asp:Button ID="btnSaveFactoryAddress" CssClass="btn-success"  ValidationGroup="SaveFactoryAddress" runat="server" Text="Save" OnClick="btnSaveFactoryAddress_Click"  OnClientClick="loader()"/>
                    </div>
                    <%-- end --%>
                </div>
                <label runat="server" id="lblSucessFactoryAddress" style="color: forestgreen"></label>
                <label runat="server" id="lblErrorFactoryAddress" style="color: red"></label>
            </div>
        </div>
    </form>
</body>
</html>
