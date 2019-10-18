<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyDetails_Tab7.aspx.cs" Inherits="MyAudit_KA.Masters.CompanyDetails_Tab7" %>

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
            <div style="border: 1px solid #c0c0c0;">
                <div class="row">
                    <div class="col-lg-12">
                        <%-- start --%>
                        <div class="form-group">
                            <label for="email">Bank Details1</label>
                        </div>
                        <%-- end --%>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <%-- start --%>
                        <div class="form-group">
                            <label for="email">Account No:</label>
                            <asp:TextBox ID="txtAccountNo1" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <%-- end --%>
                    </div>
                    <div class="col-lg-4">
                        <%-- start --%>
                        <div class="form-group">
                            <label for="email">IFSC Code:</label>
                            <asp:TextBox ID="txtIfscCode1" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <%-- end --%>
                    </div>
                    <div class="col-lg-4">
                        <%-- start --%>
                        <div class="form-group">
                            <label for="email">Name & Branch:</label>
                            <asp:TextBox ID="txtnameandbranch1" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <%-- end --%>
                    </div>
                </div>
            </div>
            <div class="row">
                &nbsp;
            </div>
            <div style="border: 1px solid #c0c0c0;">
                <div class="row">
                    <div class="col-lg-12">
                        <%-- start --%>
                        <div class="form-group">
                            <label for="email">Bank Details2</label>
                        </div>
                        <%-- end --%>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <div class="form-group">
                            <label for="email">Account No:</label>
                            <asp:TextBox ID="txtaccountno2" runat="server" class="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="form-group">
                            <label for="email">IFSC Code</label>
                            <asp:TextBox ID="txtIfsccode2" runat="server" class="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="form-group">
                            <label for="email">Name & Branch</label>

                            <asp:TextBox ID="txtnameandbranch2" runat="server" class="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                &nbsp;
            </div>
            <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">
                        <label for="email">Income Tax PAN/GIR No:</label>
                        <asp:TextBox ID="txtItnum" runat="server" class="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-group">
                        <label for="email">Ward Details</label>
                        <asp:TextBox ID="txtWdetails" runat="server" class="form-control"></asp:TextBox>
                    </div>
                </div>

            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group">
                        <label for="email">Whether it is in Public or Private Ltd.</label>
                        <asp:DropDownList ID="ddlPublic" runat="server" class="form-control">
                            <asp:ListItem>Company</asp:ListItem>
                            <asp:ListItem>Co-Operative Society</asp:ListItem>
                            <asp:ListItem>HUF</asp:ListItem>
                            <asp:ListItem>Ownership</asp:ListItem>
                            <asp:ListItem>Partnership</asp:ListItem>
                            <asp:ListItem>Private Ltd. Co.</asp:ListItem>
                            <asp:ListItem>Proprietorship</asp:ListItem>
                            <asp:ListItem>Public Ltd. Co.</asp:ListItem>
                            <asp:ListItem>Society</asp:ListItem>
                            <asp:ListItem>Trust</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">

                    <div class="form-group">
                        <asp:Button ID="btnsaveadditiondetails" CssClass="btn-success"  ValidationGroup="SaveAdditionalDetails" runat="server" Text="Save" OnClick="btnsaveadditiondetails_Click"  OnClientClick="loader()"/>
                    </div>

                </div>
               <label runat="server" id="lblSucessAdditonalDetails" style="color: forestgreen"></label>
                <label runat="server" id="lblErrorAdditonalDetails" style="color: red"></label>
            </div>
        </div>
    </form>
</body>
</html>
