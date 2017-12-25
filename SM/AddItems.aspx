<%@ Page Title="" Language="C#" MasterPageFile="~/SMMaster.Master" AutoEventWireup="true" CodeBehind="AddItems.aspx.cs" Inherits="SM.AddItems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Welcome TO Sales Page</h1>

    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
    <table>
        <tr>
            <td>Select Item Id</td>
            <td>
                <asp:DropDownList ID="ddlItemIds" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddlItemIds_SelectedIndexChanged"></asp:DropDownList></td>
        </tr>
        <tr>
            <td>Item Name</td>
            <td>
                <asp:TextBox ID="txtItemName" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Item Type</td>
            <td>
                <asp:TextBox ID="txtItemType" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Item Description</td>
            <td>
                <asp:TextBox ID="txtItemDescription" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Item Quantity</td>
            <td><asp:TextBox ID="txtItemQuantity" runat="server"></asp:TextBox></td>

        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnAddNew" runat="server" Text="Save" OnClick="btnAddNew_Click" />

            </td>
        </tr>
    </table>
</asp:Content>
