<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserInfo.ascx.cs" Inherits="UserInfo" %>

<style type="text/css">
    .auto-style1 {
        height: 39px;
    }
    .auto-style2 {
        height: 41px;
    }
    .auto-style3 {
        height: 47px;
    }
</style>

<h1>Welcome
<asp:LoginName ID="LoginName1" runat="server" />
 </h1>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>change your password<asp:ChangePassword ID="ChangePassword1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" Height="170px" Width="487px">
    <CancelButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
    <ChangePasswordButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
    <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
    <PasswordHintStyle Font-Italic="True" ForeColor="#888888" />
    <TextBoxStyle Font-Size="0.8em" />
    <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
    </asp:ChangePassword>
 </p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>


<h1>Your Profile Information</h1>
<table style="width: 53%; height: 326px;">
    <tr>
        <td class="auto-style1">First Name</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="326px"></asp:TextBox>
        </td>
        
    </tr>
    <tr>
        <td class="auto-style2">Last Name</td>
        <td class="auto-style2">
            <asp:TextBox ID="TextBox2" runat="server" Width="326px"></asp:TextBox>
        </td>
       
    </tr>


    <tr>
        <td class="auto-style1">BirthDate</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Width="326px"></asp:TextBox>
        </td>
        
    </tr>

     <tr>
        <td class="auto-style1">Street</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" Width="326px"></asp:TextBox>
        </td>
        
    </tr>
    <tr>
        <td class="auto-style1">City</td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server" Width="326px"></asp:TextBox>
        </td>
       
    </tr>
    <tr>
        <td class="auto-style1">State</td>
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <td>
            <asp:TextBox ID="TextBox6" runat="server" Width="326px"></asp:TextBox>
        </td>
        
    </tr>

     <tr>
        <td class="auto-style1">Zip</td>
        <td>
            <asp:TextBox ID="TextBox7" runat="server" Width="326px"></asp:TextBox>
        </td>
       
    </tr>
    <tr>
        <td class="auto-style1">Country</td>
        <td>
            <asp:TextBox ID="TextBox8" runat="server" Width="326px"></asp:TextBox>
        </td>
        
    </tr>
</table>

<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="update profile" />


