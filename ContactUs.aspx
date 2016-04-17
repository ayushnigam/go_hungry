<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 74px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    &nbsp;<table style="width: 59%;">
    <tr>
        <td class="auto-style1">Your Name:</td>
        <td>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Send To:</td>
        <td>
    <asp:TextBox ID="TextBox2" runat="server">ayushnigam@gmail.com</asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Your Phone:</td>
        <td>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Suggest:</td>
        <td>
    <asp:TextBox ID="TextBox4" runat="server" Height="125px" Width="269px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>
    <asp:Button ID="Button1" runat="server" Text="send" OnClick="Button1_Click" />
        </td>
    </tr>
</table>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

