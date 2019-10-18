<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Main.Master" AutoEventWireup="true" CodeBehind="CompanyMaster.aspx.cs" Inherits="MyAudit.CompanyMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../CustomStyle/Customstyle.css" rel="stylesheet" />

    <%--    <style type="text/css">
        input[type=submit] {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .Grid th {
            color: #fff;
            background-color: #3AC0F2;
        }
        /* CSS to change the GridLines color */
        .Grid, .Grid th, .Grid td {
            border: 1px solid #000000;
        }
    </style>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-12">
       
        <p style="background-color: #108a0a; text-align: center; color: #fff;">Company Master</p>
         <div class="row">
        <asp:Button ID="btnAdd" CssClass="btn-success  text-right" runat="server" Text="Add Company Master" OnClick="btnAdd_Click" />
        </div>
        
           
    </div>
     <div class="col-lg-12">

            <asp:GridView ID="grid_CompanyMaster" runat="server" AutoGenerateColumns="false" EmptyDataText="No Records Found!"
                CssClass="Grid table table-striped"
                AllowPaging="true" PageSize="10" OnPageIndexChanging="GridView1_PageIndexChanging" BorderWidth="2px">
                <%--PagerStyle-ForeColor="gray" 
                        AlternatingRowStyle-BackColor="#F6F6F6" AlternatingRowStyle-ForeColor="#fff"
                        RowStyle-Height="35" HeaderStyle-Height="40" GridLines="None" BorderColor="Black" BorderWidth="1px"--%>


                <Columns>
                    <asp:TemplateField HeaderText="Company Code" HeaderStyle-HorizontalAlign="Left" ItemStyle-Width="15%">
                        <ItemStyle />
                        <ItemTemplate>

                            <asp:Label ID="lbl_CompanyCode" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "compcode")%>'></asp:Label>

                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Company Name" HeaderStyle-HorizontalAlign="Left" ItemStyle-Width="15%">
                        <ItemStyle />
                        <ItemTemplate>

                            <asp:Label ID="lbl_CompanyName" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "compname")%>' Style="word-break: break-all; word-wrap: break-word"></asp:Label>

                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Company Address" HeaderStyle-HorizontalAlign="Left" ItemStyle-Width="15%">
                        <ItemStyle />
                        <ItemTemplate>

                            <asp:Label ID="lbl_CompanyAddress" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "cadd1")%>'></asp:Label>

                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="PF Code" HeaderStyle-HorizontalAlign="Left" ItemStyle-Width="13%">
                        <ItemStyle />
                        <ItemTemplate>

                            <asp:Label ID="lbl_PfCode" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "pfcode")%>'></asp:Label>

                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ESI Code" HeaderStyle-HorizontalAlign="Left" ItemStyle-Width="15%">
                        <ItemStyle />
                        <ItemTemplate>

                            <asp:Label ID="lbl_esicode" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "esicode")%>'></asp:Label>

                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Nature of Industry" HeaderStyle-HorizontalAlign="Left" ItemStyle-Width="15%">
                        <ItemStyle />
                        <ItemTemplate>

                            <asp:Label ID="lbl_NOI" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "NatureOfIndustry")%>'></asp:Label>

                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="" HeaderStyle-HorizontalAlign="Left" ItemStyle-Width="12%">
                        <ItemStyle />
                        <ItemTemplate>


                            <button class="btn-success">
                                <asp:LinkButton ID="lnkEdit" runat="server" Text="Edit" OnClick="lnkSave_Click"></asp:LinkButton>
                            </button>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>

        </div>
    <br />
    <br />
    <br />

</asp:Content>

