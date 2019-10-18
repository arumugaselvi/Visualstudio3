<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Main.Master" AutoEventWireup="true" CodeBehind="CompanyDtl.aspx.cs" Inherits="MyAudit_KA.MasterDetails.CompanyDtl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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

        .Grid th {
            color: #fff;
            background-color: #3AC0F2;
        }
        /* CSS to change the GridLines color */
        .Grid, .Grid th, .Grid td {
            border: 1px solid #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div>
            <table style="width: 100%;">
                <tr style="height: 40px; background-color: cadetblue;">
                    <td style="width: 80%;" align="center">
                        <div style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-weight: 800; color: white;">
                            Company Master
                             <asp:Label ID="lblusername" runat="server" Style="color: white; float: right; margin-right: 20px;"></asp:Label>
                        </div>
                    </td>
                    <td style="width: 20%;" align="center">
                        <asp:Button ID="btn_logout" Text="Log out" runat="server" OnClick="btn_logout_click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:GridView ID="grid_CompanyMaster" runat="server" AutoGenerateColumns="false" EmptyDataText="No Records Found!"
                             RowStyle-Height="35" HeaderStyle-Height="40" GridLines="None" BorderColor="Black" BorderWidth="1px"
                            AlternatingRowStyle-BackColor="#F6F6F6" AlternatingRowStyle-ForeColor="#F6F6F6" CssClass="Grid" 
                            PagerStyle-ForeColor="gray" AllowPaging="true" PageSize="10" OnPageIndexChanging="GridView1_PageIndexChanging">
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

                                        <asp:Label ID="lbl_CompanyName" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "compname")%>' style="word-break:break-all; word-wrap:break-word"></asp:Label>

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

                                        <asp:Button ID="btnAdd" runat="server" Text="Add" />
                                        <asp:Button ID="btnEdit" runat="server" Text="Edit" />

                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>

</asp:Content>
