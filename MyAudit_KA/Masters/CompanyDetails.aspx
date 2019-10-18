<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Main.Master" AutoEventWireup="true" CodeBehind="CompanyDetails.aspx.cs" Inherits="MyAudit_KA.MasterDetails.CompanyDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <link href="../CustomStyle/Customstyle.css" rel="stylesheet" />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        function loader()
        {
            //alert('1');
            document.getElementById('ContentPlaceHolder1_load').style.display = "";
        }
        document.onreadystatechange = function () {
            var state = document.readyState
            if (state == 'complete') {
                //document.getElementById('load').style.visibility = "hidden";
            }
        }
    </script>
     <div id="load" runat="server" style="display:none;"></div>
       
    <div id="accordion">

        <div class="card" id="divCompanyDetail" runat="server">
            <div class="card-header">
                <a class="card-link" data-toggle="collapse" href="#collapseOne" style="font-weight: bold;">Company Details
                </a>
            </div>
            <div id="collapseOne" class="collapse show" data-parent="#accordion">
                <div class="card-body">

                    <div class="row">
                        <div class="col-lg-4">
                            <%-- start --%>
                            <div class="form-group">
                                <label for="email">Company Code:</label>
                                <%--<input type="email" class="form-control" id="email">--%>
                                <asp:TextBox ID="txtCompanyCode" runat="server" class="form-control" ReadOnly="true" MaxLength="5"></asp:TextBox>
                            </div>
                            <%-- end --%>
                        </div>
                        <div class="col-lg-4">
                            <%-- start --%>
                            <div class="form-group">
                                <label for="email">Company Name:</label>
                                <%--<input type="email" class="form-control" id="email">--%>
                                <asp:TextBox ID="txtCompanyName" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfv_cmpname" runat="server" ControlToValidate="txtCompanyName" ErrorMessage="Please enter company name!" ValidationGroup="SaveCompanyCode"></asp:RequiredFieldValidator>
                            </div>
                            <%-- end --%>
                        </div>
                        <div class="col-lg-4">
                            <%-- start --%>
                            <div class="form-group">
                                <label for="email">Nature of Industry:</label>
                                <%--<input type="email" class="form-control" id="email">--%>
                                <asp:TextBox ID="txtnatureofIndustry" runat="server" class="form-control" MaxLength="100"></asp:TextBox>
                            </div>
                            <%-- end --%>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-4">
                            <%-- start --%>
                            <div class="form-group">
                                <label for="email">Date of Inc./Setup:</label>
                                <%--<input type="email" class="form-control" id="email">--%>
                                <asp:TextBox ID="txtDateofSetup" TextMode="Date" runat="server" class="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="reqtxtDateofSetup" ControlToValidate="txtDateofSetup" ValidationGroup="SaveCompanyCode" ErrorMessage="Please enter Date of Setup!" />

                            </div>
                            <%-- end --%>
                        </div>
                        <div class="col-lg-4">
                            <%-- start --%>
                            <div class="form-group">
                                <label for="email">Status:</label>
                                <%--<input type="email" class="form-control" id="email">--%>
                                <asp:DropDownList ID="ddlStatus" runat="server" class="form-control">
                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                    <asp:ListItem Value="A">Active</asp:ListItem>
                                    <asp:ListItem Value="I">In Active</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <%-- end --%>
                        </div>
                        <div class="col-lg-4">
                            <%-- start --%>
                            <div class="form-group">
                                <label for="email">Date of Status:</label>
                                <%--<input type="email" class="form-control" id="email">--%>
                                <asp:TextBox ID="txtstatusDate" TextMode="Date" runat="server" class="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="reqtxtstatusDate" ControlToValidate="txtstatusDate" ValidationGroup="SaveCompanyCode" ErrorMessage="Please enter Status Date!" />

                            </div>
                            <%-- end --%>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-4">
                            <%-- start --%>
                            <div class="form-group">
                                <label for="email">Has Branch:</label>
                                <%--<input type="email" class="form-control" id="email">--%>
                                <asp:CheckBox ID="chk_branch" runat="server" />
                            </div>
                            <%-- end --%>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-4">
                            <%-- start --%>
                            <div class="form-group">
                                <asp:Button ID="btnCompanyDetailsSave" CssClass="btn-success" ValidationGroup="SaveCompanyCode" runat="server" Text="Save" OnClick="btnCompanyDetailsSave_Click"  OnClientClick="loader()"/>
                            </div>
                            <%-- end --%>
                        </div>
                        <label runat="server" id="lblSucessCmpDetails" style="color: forestgreen"></label>
                        <label runat="server" id="lblErrorCmpDetails" style="color: red"></label>
                    </div>
                </div>
            </div>
        </div>

        <div class="card" id="divCompanyAddress" runat="server" style="pointer-events: none">
            <div class="card-header">
                <a class="card-link" data-toggle="collapse" href="#collapseTwo" style="font-weight: bold;">Company Address
                </a>
            </div>
            <div id="collapseTwo" class="collapse" data-parent="#accordion">
                <div class="card-body" style="padding: 0px;">
                    <iframe id="frame_divCompanyDetail" runat="server" src="CompanyDetails_Tab2.aspx" style="width: 99.99%; padding: 1.25rem; height: 650px;"></iframe>
                </div>
            </div>
        </div>

        <div class="card" id="divFactoryAddress" runat="server" style="pointer-events: none">
            <div class="card-header">
                <a class="card-link" data-toggle="collapse" href="#collapseThree" style="font-weight: bold;">Factory Address
                </a>
            </div>
            <div id="collapseThree" class="collapse" data-parent="#accordion">
                <div class="card-body" style="padding: 0px;">
                    <iframe id="frame_divFactoryAddress" runat="server" src="CompanyDetails_Tab3.aspx" style="width: 99.99%; padding: 1.25rem; height: 650px;"></iframe>
                </div>
            </div>
        </div>

        <%--PF Details--%>
        <div class="card" id="divProvidentFundDetails" runat="server" style="pointer-events: none">
            <div class="card-header">
                <a class="collapsed card-link" data-toggle="collapse" href="#collapseFour" style="font-weight: bold;">Provident Fund Details
                </a>
            </div>
            <div id="collapseFour" class="collapse" data-parent="#accordion">
                <div class="card-body" style="padding: 0px;">
                    <iframe id="frame_divProvidentFundDetails" runat="server" src="CompanyDetails_Tab4.aspx" style="width: 99.99%; padding: 1.25rem; height: 650px;"></iframe>
                </div>
            </div>
        </div>
        <%--ESI Details--%>
        <div class="card" id="divESIDetails" runat="server" style="pointer-events: none">
            <div class="card-header">
                <a class="collapsed card-link" data-toggle="collapse" href="#collapseFive" style="font-weight: bold;">ESI Details
                </a>
            </div>
            <div id="collapseFive" class="collapse" data-parent="#accordion">
                <div class="card-body" style="padding: 0px;">
                    <iframe id="frame_divESIDetails" runat="server" src="CompanyDetails_Tab5.aspx" style="width: 99.99%; padding: 1.25rem; height: 650px;"></iframe>
                </div>
            </div>
        </div>


        <div class="card" id="divEmployerPersonalDetails" runat="server" style="pointer-events: none">
            <div class="card-header">
                <a class="collapsed card-link" data-toggle="collapse" href="#collapseSix" style="font-weight: bold;">Employer's Personal Details
                </a>
            </div>
            <div id="collapseSix" class="collapse" data-parent="#accordion">
                <div class="card-body" style="padding: 0px;">
                    <iframe id="frame_divEmployerPersonalDetails" runat="server" src="CompanyDetails_Tab6.aspx" style="width: 99.99%; padding: 1.25rem; height: 650px;"></iframe>
                    
                </div>
            </div>
        </div>

        <div class="card" id="divAdditonalDetails" runat="server" style="pointer-events: none">
            <div class="card-header">
                <a class="collapsed card-link" data-toggle="collapse" href="#collapseSeven" style="font-weight: bold;">Additional Details
                </a>
            </div>
            <div id="collapseSeven" class="collapse" data-parent="#accordion">
                <div class="card-body" style="padding: 0px;">
                    <iframe id="frame_divAdditonalDetails" runat="server" src="CompanyDetails_Tab7.aspx" style="width: 99.99%; padding: 1.25rem; height: 650px;"></iframe>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
