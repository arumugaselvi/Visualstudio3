<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MyAudit.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="bootstrap-4.3.1-dist/css/bootstrap.css" rel="stylesheet" />
    <link href="CustomStyle/Customstyle.css" rel="stylesheet" />

</head>
<body>

    <form id="form1" runat="server">

        <div class="wrapper fadeInDown homewrapper">
            <div id="formContent">
                <!-- Tabs Titles -->

                <!-- Icon -->
                <div class="fadeIn first">
                    <br />
                    <h4 style="font-family:sans-serif;">Keerthi Associates</h4>
                    <br />
                </div>

                <!-- Login Form -->
                <asp:TextBox ID="txt_username" CssClass="login-input" runat="server" placeholder="Username"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_username" runat="server" ErrorMessage="Please enter username" ControlToValidate="txt_username" ForeColor="Red" ValidationGroup="login"></asp:RequiredFieldValidator>

                <asp:TextBox ID="txt_password" CssClass="login-input" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter Password" ControlToValidate="txt_username" ForeColor="Red" ValidationGroup="login"></asp:RequiredFieldValidator>
                <asp:Button ID="btn_login" runat="server" OnClick="btn_login_click" Text="Login" ValidationGroup="login" />
                <br />
                <asp:Label ID="lbllogin" runat="server"></asp:Label>

                <!-- Remind Passowrd -->
                <div id="formFooter">
                    <a class="underlineHover" href="#">Forgot Password?</a>
                </div>

            </div>
        </div>




    </form>

</body>
</html>
