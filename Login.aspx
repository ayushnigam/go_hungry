<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

        

        <br />
        <br />
        <br />
        <br />
            <br />
            <br />
            <br />
    <asp:Login ID="Login1" runat="server" CreateUserText="New Customer" CreateUserUrl="CreateUser.aspx" DestinationPageUrl="Welcome.aspx" PasswordRecoveryText="Forgot your password" PasswordRecoveryUrl="RecoverPassword.aspx"></asp:Login>
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
        

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

