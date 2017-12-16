<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="SM.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblErrorMessage" BackColor="Red" runat="server" Text=""></asp:Label>
                 <table>
                <tr>
                    <td>User Name</td>
                    <td>
                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td>Password</td>
                    <td>
                        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
                    </td>
                </tr>

                      <tr>
                    <td>Re-Password</td>
                    <td>
                        <asp:TextBox ID="txtRePassword" TextMode="Password" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td colspan="2">
                        <asp:Button ID="btnLogin" runat="server" Text="Create" OnClick="btnLogin_Click"  />
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
