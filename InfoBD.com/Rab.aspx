<%@ Page Title="" Language="C#" MasterPageFile="~/InfoBD.Master" AutoEventWireup="true" CodeBehind="Rab.aspx.cs" Inherits="InfoBD.com.Rab" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server" >

        <h1 style="font-size:50px;margin-top:40px;text-align:center"><br>Rapid Action Battalion</h1>

    <asp:SqlDataSource ID="SqlDataSourceRab" runat="server" ConnectionString="<%$ ConnectionStrings:INFOBDConnectionString %>" SelectCommand="SELECT [Id], [Area], [PhoneNumber] as [Phone Number]FROM [RabDatabase]"></asp:SqlDataSource>

        <asp:DataGrid ID="DataGrid1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSourceRab" ForeColor="Black" GridLines="None">
            <AlternatingItemStyle BackColor="PaleGoldenrod" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        </asp:DataGrid>
    </form>

</asp:Content>
