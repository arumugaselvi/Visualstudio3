<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyDetails_Tab6.aspx.cs" Inherits="MyAudit_KA.Masters.CompanyDetails_Tab6" %>

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
                    <%-- start --%>
                    <div class="form-group">
                        <label for="email">Name:</label>
                        <%--<input type="email" class="form-control" id="email">--%>
                        <asp:TextBox ID="txtEmployerName" runat="server" class="form-control"></asp:TextBox>
                    </div>
                    <%-- end --%>
                </div>
                <div class="col-lg-4">
                    <%-- start --%>
                    <div class="form-group">
                        <label for="email">Designation:</label>
                        <%--<input type="email" class="form-control" id="email">--%>
                        <asp:TextBox ID="txtEmployerDesignation" runat="server" class="form-control"></asp:TextBox>
                    </div>
                    <%-- end --%>
                </div>
                <div class="col-lg-4">
                    <%-- start --%>
                    <div class="form-group">
                        <label for="email">Email:</label>
                        <%--<input type="email" class="form-control" id="email">--%>
                        <asp:TextBox ID="txtEmployerEmail" runat="server" class="form-control"></asp:TextBox>
                    </div>
                    <%-- end --%>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">
                        <label for="email">Address:</label>
                        <asp:TextBox ID="txtEmployerAddress1" runat="server" class="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <label for="email">&nbsp;</label>
                        <asp:TextBox ID="txtEmployerAddress2" runat="server" class="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <label for="email">&nbsp;</label>

                        <asp:TextBox ID="txtEmployerAddress3" runat="server" class="form-control"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">
                        <label for="email">City:</label>
                        <asp:TextBox ID="txtemployersCity" runat="server" class="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <label for="email">Pincode;</label>
                        <asp:TextBox ID="txtEmployerPincode" runat="server" class="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <label for="email">Phone</label>

                        <asp:TextBox ID="txtEmployerPhone" runat="server" class="form-control"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">
                        <label for="email">Fax:</label>
                        <asp:TextBox ID="txtEmployerFax" runat="server" class="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <label for="email">Mobile;</label>
                        <asp:TextBox ID="txtEmployermobile" runat="server" class="form-control"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">

                    <div class="form-group">
                        <asp:Button ID="btnSaveEmployerPersonalDetails" CssClass="btn-success" ValidationGroup="SaveEmployerPersonalDetails" runat="server" Text="Save" OnClick="btnSaveEmployerPersonalDetails_Click"  OnClientClick="loader()"/>
                    </div>

                </div>
                <label runat="server" id="lblSucessEmployerPersonalDetails" style="color: forestgreen"></label>
                <label runat="server" id="lblErrorEmployerPersonalDetails" style="color: red"></label>
            </div>
        </div>
    </form>
</body>
</html>
