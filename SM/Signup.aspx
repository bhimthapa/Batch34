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
                    <td> Select Username</td>
                    <td>
                        <asp:DropDownList ID="ddlUserNames" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddlUserNames_SelectedIndexChanged"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>First Name</td>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First name is required"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td>Last Name</td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last name is required"></asp:RequiredFieldValidator>

                    </td>
                </tr>

                <tr>
                    <td>Street</td>
                    <td>
                        <asp:TextBox ID="txtStreet" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvStreet" runat="server" ControlToValidate="txtStreet" ErrorMessage="Street is required"></asp:RequiredFieldValidator>

                    </td>
                </tr>

                <tr>
                    <td>City</td>
                    <td>
                        <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvCity" runat="server" ControlToValidate="txtCity" ErrorMessage="City is required"></asp:RequiredFieldValidator>

                    </td>
                </tr>

                <tr>
                    <td>State</td>
                    <td>
                        <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvState" runat="server" ControlToValidate="txtState" ErrorMessage="State is required"></asp:RequiredFieldValidator>

                    </td>
                </tr>

                <tr>
                    <td>Zip</td>
                    <td>
                        <asp:TextBox ID="txtZip" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvZip" runat="server" ControlToValidate="txtZip" ErrorMessage="Zipcode is required"></asp:RequiredFieldValidator>

                    </td>
                </tr>

                <tr>
                    <td>Email</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required"></asp:RequiredFieldValidator>

                    </td>
                </tr>

                <tr>
                    <td>Username</td>
                    <td>
                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is required"></asp:RequiredFieldValidator>

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
                    <td>Re-Password</td>
                    <td>
                        <asp:TextBox ID="txtRePassword" TextMode="Password" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvRePassword" runat="server" ControlToValidate="txtRePassword" ErrorMessage="RePassword is required"></asp:RequiredFieldValidator>

                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnLogin" runat="server" Text="Create" OnClick="btnLogin_Click" />
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />

                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
