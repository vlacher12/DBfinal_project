<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="institute.aspx.cs" Inherits="FinalProject.institute" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Бюджетні установи</h1>
    <asp:DetailsView ID="DetailsView1" runat="server"  AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="50px" Width="125px" AllowPaging="True">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <Fields>
        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
        <asp:BoundField DataField="code" HeaderText="code" SortExpression="code" />
        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
        <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
    </Fields>
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        
</asp:DetailsView>
    
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FinalProjectConnectionString %>" SelectCommand="SELECT * FROM [institution]"></asp:SqlDataSource>
</asp:Content>
