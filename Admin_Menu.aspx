<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin_Menu.aspx.cs" Inherits="Admin_Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div>
            <a href="Welcome.aspx">Go Back To Welcome Page</a>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [style] FROM [Menu] "></asp:SqlDataSource>
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="style" DataValueField="style">
        </asp:DropDownList>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Menu] WHERE [Image] = @original_Image" InsertCommand="INSERT INTO [Menu] ([MenuID], [Entree], [Description], [Image]) VALUES (@MenuID, @Entree, @Description, @Image)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [MenuID], [Entree], [Description], [Image] FROM [Menu] WHERE ([style] = @style)" UpdateCommand="UPDATE [Menu] SET [MenuID] = @MenuID, [Entree] = @Entree, [Description] = @Description WHERE [Image] = @original_Image">
            <DeleteParameters>
                <asp:Parameter Name="original_Image" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MenuID" Type="Int32" />
                <asp:Parameter Name="Entree" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Image" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="style" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="MenuID" Type="Int32" />
                <asp:Parameter Name="Entree" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="original_Image" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Image" DataSourceID="SqlDataSource2" Width="345px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="MenuID" HeaderText="MenuID" SortExpression="MenuID" />
                <asp:BoundField DataField="Entree" HeaderText="Entree" SortExpression="Entree" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" ReadOnly="True" />
            </Columns>
        </asp:GridView>
        <br />

    </div>
    

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>