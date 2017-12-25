<%@ Page Title="" Language="C#" MasterPageFile="~/SMMaster.Master" AutoEventWireup="true" CodeBehind="Stock.aspx.cs" Inherits="SM.Stock" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Welcome to Stock Page</h1>


    <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"></asp:GridView>
</asp:Content>
