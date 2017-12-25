<%@ Page Title="" Language="C#" MasterPageFile="~/SMMaster.Master" AutoEventWireup="true" CodeBehind="Purchase.aspx.cs" Inherits="SM.Purchase" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
           <h1> Welcome to Purchase Page </h1>
            <br /><br /><br />
            <asp:Label ID="lblErrorMessage" runat="server" Text=""></asp:Label>
            <table>
                
                <tr><th>Purchase Table</th></tr>
                
                <tr>
                     <td> Select Item ID</td>
                    <td> <asp:DropDownList ID="ddlItemIds" Autopostback="true" runat="server" OnSelectedIndexChanged="ddlitemid_SelectedIndexChanged"></asp:DropDownList></td>
                    
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
                        <asp:Button ID="btnAddNew" runat="server" Text="Save" OnClick="btnAddNew_Click" /></td>
                </tr>
            </table>

        </div>
   </asp:Content>