<%@ Page Title="" Language="C#" MasterPageFile="~/InfoBD.Master" AutoEventWireup="true" CodeBehind="Fire.aspx.cs" Inherits="InfoBD.com.Fire" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">

        <h1 style="font-size:50px;margin-top:40px;text-align:center"><br>Bangladesh Fire Service</h1>

    <asp:SqlDataSource ID="SqlDataSourceFire" runat="server" ConnectionString="<%$ ConnectionStrings:INFOBDConnectionString %>" SelectCommand="SELECT [Id], [Area], [PhoneNumber] as [Phone Number]FROM [FireDatabase]"></asp:SqlDataSource>

        <asp:DataGrid ID="DataGrid1" runat="server" DataSourceID="SqlDataSourceFire" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
            <AlternatingItemStyle BackColor="PaleGoldenrod" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        </asp:DataGrid>
    </form>

</asp:Content>
