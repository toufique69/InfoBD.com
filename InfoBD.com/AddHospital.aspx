<%@ Page Title="" Language="C#" MasterPageFile="~/InfoBD.Master" AutoEventWireup="true" CodeBehind="AddHospital.aspx.cs" Inherits="InfoBD.com.AddHospital" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
    
    <h1 style="font-size:50px;margin-top:40px;text-align:center"><br>Hospital of Bangladesh</h1>

        <asp:SqlDataSource ID="SqlDataSourceHospital" runat="server" ConnectionString="<%$ ConnectionStrings:INFOBDConnectionString %>" SelectCommand="SELECT [Id] FROM [HospitalDatabase] ORDER BY [Id]"></asp:SqlDataSource>

        <table align="center" border="2" cellpadding="2" cellspacing="3" style="border: thin solid #008000; width: 100%; font-size: x-large; margin-top:70px">
            
            <tr>
                <td style="width: 339px">&nbsp;</td>
                <td>

        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceHospital" DataTextField="Id" DataValueField="Id" Height="50px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="200px">
     </asp:DropDownList>
                </td>
            </tr>
            
            <tr>
                <td style="width: 339px"></td>
                <td>
                    <asp:TextBox ID="TextBox4"  Placeholder="Id" Font-Size="18px" runat="server" Height="50px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 339px"></td>
                <td>
                    <asp:TextBox ID="TextBox3"  Placeholder="Hospital Name" Font-Size="18px" runat="server" Height="50px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 339px"></td>
                <td>
                    <asp:TextBox ID="TextBox1"  Placeholder="Area" Font-Size="18px" runat="server" Height="50px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 339px"></td>
                <td>
                    <asp:TextBox ID="TextBox2"  Placeholder="Phone Number" Font-Size="18px" runat="server" Height="50px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 339px">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Save" />
                    <asp:Button ID="Button2" runat="server" Style="margin-left:5px" Text="Update" OnClick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" Style="margin-left:5px" Text="Delete" OnClick="Button3_Click" />
                    <asp:Button ID="Button4" runat="server" Style="margin-left:5px" OnClick="Button4_Click" Text="New" />
                </td>
            </tr>
        </table>

    </form>

</asp:Content>
