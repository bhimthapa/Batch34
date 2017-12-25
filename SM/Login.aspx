<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SM.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblErrorMessage" BackColor="Red" runat="server" Text=""></asp:Label>
            <asp:Button ID="btnAddUser" runat="server" Text="Signup" CausesValidation="false"   OnClick="btnAddUser_Click"/>
            <table>
                <tr>
                    <td>User Name</td>
                    <td>
                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUserName" ErrorMessage="Username is required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td>Password</td>
                    <td>
                        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td colspan="2">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" Height="20px" />
                      <%--  <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />--%>
                    </td>
                     <td>
                         &nbsp;</td>
                </tr>
            </table>


        </div>
    </form>
</body>
</html>
