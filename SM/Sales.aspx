<%@ Page Title="" Language="C#" MasterPageFile="~/SMMaster.Master" AutoEventWireup="true" CodeBehind="Sales.aspx.cs" Inherits="SM.Sales" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1>Welcome TO Sales Page</h1>
   <asp:Label ID="lblErrorMessage" runat="server" Text=""></asp:Label>
            <table>
                
                <tr><th>Sales Table</th></tr>
                
                <tr>
                     <td> Select Item ID</td>
                    <td> <asp:DropDownList ID="ddlItemIds" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddlItemIds_SelectedIndexChanged"></asp:DropDownList></td>
                    
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
                     <td> Item Price</td>
                    <td> <asp:TextBox ID="txtItemPrice" runat="server"></asp:TextBox></td>
                    
                </tr>
                
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnSales" runat="server" Text="Save" OnClick="btnSales_Click" /></td>
                </tr>
            </table>
</asp:Content>

