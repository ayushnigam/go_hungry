<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TableReservation.aspx.cs" Inherits="TableReservation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br />
    <br />
        <a href="Welcome.aspx">Go Back To Welcome Page</a> <asp:Label ID="Label7" runat="server" Text="Please Choose a Day"></asp:Label>
    <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="262px" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True" Width="538px">
        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
        <OtherMonthDayStyle ForeColor="#CC9966" />
        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
        <SelectorStyle BackColor="#FFCC66" />
        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
    </asp:Calendar>
<asp:Label ID="Label8" runat="server" Text="Please Choose a Day"></asp:Label>    <asp:Label ID="Label1" runat="server"></asp:Label>
    <br />
    <asp:Label ID="Label5" runat="server" Text="Select Time" Visible="False"></asp:Label><asp:DropDownList ID="DropDownList1" runat="server" Visible="False">
        <asp:ListItem Value="11 AM">11 AM</asp:ListItem>
        <asp:ListItem>12 PM</asp:ListItem>
        <asp:ListItem>1 PM</asp:ListItem>
        <asp:ListItem>2 PM</asp:ListItem>
        <asp:ListItem>3 PM</asp:ListItem>
        <asp:ListItem>4 PM</asp:ListItem>
        <asp:ListItem>5 PM</asp:ListItem>
        <asp:ListItem>6 PM</asp:ListItem>
        <asp:ListItem>7 PM</asp:ListItem>
        <asp:ListItem>8 PM</asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Text="How Many People do you have" Visible="False"></asp:Label>
    <asp:DropDownList ID="DropDownList2" runat="server" Visible="False">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>6</asp:ListItem>
        <asp:ListItem>7</asp:ListItem>
        <asp:ListItem>8</asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList3" runat="server" Visible="False">
        <asp:ListItem Value="1">Table 1</asp:ListItem>
        <asp:ListItem Value="2">Table 2</asp:ListItem>
        <asp:ListItem Value="3">Table 3</asp:ListItem>
        <asp:ListItem Value="4">Table 4</asp:ListItem>
        <asp:ListItem Value="5">Table 5</asp:ListItem>
        <asp:ListItem Value="6">Table 6</asp:ListItem>
        <asp:ListItem Value="7">Table7</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Label ID="Label6" runat="server" Text="Reservation Number" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Need Anything Special？" Visible="False"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Name" Visible="False"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Reserve" Visible="False" />
    <br />
    <br />
    <asp:Label ID="lblResults" runat="server"></asp:Label>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Reservation]"></asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ReservationId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ReservationId" HeaderText="ReservationId" ReadOnly="True" SortExpression="ReservationId" />
            <asp:BoundField DataField="TableNo" HeaderText="TableNo" SortExpression="TableNo" />
            <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
            <asp:BoundField DataField="People" HeaderText="People" SortExpression="People" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <br />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

