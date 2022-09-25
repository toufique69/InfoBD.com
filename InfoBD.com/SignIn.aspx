<%@ Page Title="" Language="C#" MasterPageFile="~/InfoBD.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="InfoBD.com.Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
    
    <h1 style="font-size:50px;margin-top:50px;text-align:center"><br>Admin Panel Sign In</h1>

        <table align="center" border="2" cellpadding="2" cellspacing="3" style="border: thin solid #008000; width: 100%; font-size:large; margin-top:100px;margin-bottom:100px">
            <tr>
                <td style="width: 182px"></td>
                <td>
                    <asp:TextBox ID="TextBox1"  Placeholder="User Name" Font-Size="18px" runat="server" Height="50px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 182px"></td>
                <td>
                    <asp:TextBox ID="TextBox2"  type="password" Placeholder="Password" Font-Size="18px" runat="server" Height="50px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 182px">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Sign In" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>

    </form>

</asp:Content>
