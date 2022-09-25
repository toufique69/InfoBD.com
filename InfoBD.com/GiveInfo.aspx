<%@ Page Title="" Language="C#" MasterPageFile="~/InfoBD.Master" AutoEventWireup="true" CodeBehind="GiveInfo.aspx.cs" Inherits="InfoBD.com.Information" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
    
    <h1 style="font-size:50px;margin-top:40px;text-align:center"><br>Give Information or feedback</h1>

        <table align="center" border="2" cellpadding="2" cellspacing="3" style="border: thin solid #008000; width: 100%; margin-top:70px">
            <tr>
                <td style="width: 339px"></td>
                <td>
                    <asp:TextBox ID="TextBox1"  Placeholder="Name" Font-Size="16px" runat="server" Height="50px" Width="500px"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width: 339px"></td>
                <td>
                    <asp:TextBox ID="TextBox2"  Placeholder="E-mail" Font-Size="16px" runat="server" Height="50px" Width="500px"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width: 339px"></td>
                <td>
                    <asp:TextBox ID="TextBox3"  Placeholder="Phone Number" Font-Size="16px" runat="server" Height="50px" Width="500px"></asp:TextBox>
                </td>
            </tr>

             <tr>
                <td style="width: 339px">&nbsp;</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Style="font-size:16px" Width="500px">
                        <asp:ListItem>Bangladesh Police</asp:ListItem>
                        <asp:ListItem>Rapid Action Battalion</asp:ListItem>
                        <asp:ListItem>Bangladesh Fire Service</asp:ListItem>
                        <asp:ListItem>Hospitals of Bangladesh</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>

             <tr>
                <td style="width: 339px">&nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox4" Placeholder="Information" runat="server" Height="150px" Font-Size="16px" Width="500px"></asp:TextBox>
                 </td>
            </tr>

             <tr>
                <td style="width: 339px">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Style="margin-left:5px" Text="Reset" OnClick="Button2_Click" />
                 </td>
            </tr>

            </table>

        </form>

</asp:Content>
