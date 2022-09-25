<%@ Page Title="" Language="C#" MasterPageFile="~/InfoBD.Master" AutoEventWireup="true" CodeBehind="Hospital.aspx.cs" Inherits="InfoBD.com.Hospital" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">

        <h1 style="font-size:50px;margin-top:40px;text-align:center"><br>Hospitals of Bangladesh</h1>

    <asp:SqlDataSource ID="SqlDataSourceHospital" runat="server" ConnectionString="<%$ ConnectionStrings:INFOBDConnectionString %>" SelectCommand="SELECT [Id], [HospitalName] as [Hospital Name], [Area], [PhoneNumber] as [Phone Number] FROM [HospitalDatabase]"></asp:SqlDataSource>

        <asp:DataGrid ID="DataGrid1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSourceHospital" ForeColor="Black" GridLines="None">
            <AlternatingItemStyle BackColor="PaleGoldenrod" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        </asp:DataGrid>
    </form>

</asp:Content>
