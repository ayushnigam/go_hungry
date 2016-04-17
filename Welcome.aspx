<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="Welcome" %>

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
    <br />

    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        <br />
        <asp:LoginView ID="LoginView1" runat="server">
        <AnonymousTemplate>
            <p> Pleast Login Here <a href="Login.aspx">HERE</a> </p>
        </AnonymousTemplate>
            <RoleGroups>
                <asp:RoleGroup Roles="Admin">
                    <ContentTemplate>
                        <a href="Admin.aspx">Go to Admin Page</a>
                        <br />
                        <a href="Admin_Menu.aspx">Change Menu</a>
                        <br />
                        <a href="AdminAd.aspx">Change Advertise</a>
                        <br />
                        <a href="HomeAdmin.aspx">Change Special Entree On Home Page</a>
                        <br />
                        <a href="Inventory.aspx">Manage Inventory</a>
                        <br />
                        <a href="TableReservationAdmin.aspx">Manage The Reservations</a>



                    </ContentTemplate>
                </asp:RoleGroup>

                <asp:RoleGroup Roles="User">
                    <ContentTemplate>
                        <a href="User.aspx">Go to User Page</a>
                        <a href="TableReservation.aspx">Go Make A Reservation</a>

                    </ContentTemplate>
                </asp:RoleGroup>
            </RoleGroups>
    </asp:LoginView>

        <asp:LoginStatus ID="LoginStatus1" runat="server" />
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

