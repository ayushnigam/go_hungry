<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Inventory.aspx.cs" Inherits="Inventory" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
        <a href="Welcome.aspx">Go Back To Welcome Page</a>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Inventory] WHERE [InvId] = @InvId" InsertCommand="INSERT INTO [Inventory] ([InvId], [InvIteam], [InvWeight], [InvPrice], [InvRetailer]) VALUES (@InvId, @InvIteam, @InvWeight, @InvPrice, @InvRetailer)" SelectCommand="SELECT [InvId], [InvIteam], [InvWeight], [InvPrice], [InvRetailer] FROM [Inventory]" UpdateCommand="UPDATE [Inventory] SET [InvIteam] = @InvIteam, [InvWeight] = @InvWeight, [InvPrice] = @InvPrice, [InvRetailer] = @InvRetailer WHERE [InvId] = @InvId">
        <DeleteParameters>
            <asp:Parameter Name="InvId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="InvId" Type="Int32" />
            <asp:Parameter Name="InvIteam" Type="String" />
            <asp:Parameter Name="InvWeight" Type="Decimal" />
            <asp:Parameter Name="InvPrice" Type="Decimal" />
            <asp:Parameter Name="InvRetailer" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="InvIteam" Type="String" />
            <asp:Parameter Name="InvWeight" Type="Decimal" />
            <asp:Parameter Name="InvPrice" Type="Decimal" />
            <asp:Parameter Name="InvRetailer" Type="String" />
            <asp:Parameter Name="InvId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="InvId" DataSourceID="SqlDataSource1" Width="387px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:TemplateField HeaderText="ID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("InvId") %>' Height="29px" Width="16px"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("InvId") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Iteam">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("InvIteam") %>' Height="24px" Width="64px"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("InvIteam") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Weight in pound">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("InvWeight") %>' Height="19px" Width="58px"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("InvWeight") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Price per pound">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("InvPrice") %>' Height="21px" Width="57px"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("InvPrice") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Retailer" SortExpression="InvRetailer">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("InvRetailer") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("InvRetailer") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Inventory] WHERE [InvId] = @InvId" InsertCommand="INSERT INTO [Inventory] ([InvId], [InvIteam], [InvWeight], [InvPrice], [InvRetailer]) VALUES (@InvId, @InvIteam, @InvWeight, @InvPrice, @InvRetailer)" SelectCommand="SELECT [InvId], [InvIteam], [InvWeight], [InvPrice], [InvRetailer] FROM [Inventory]" UpdateCommand="UPDATE [Inventory] SET [InvIteam] = @InvIteam, [InvWeight] = @InvWeight, [InvPrice] = @InvPrice, [InvRetailer] = @InvRetailer WHERE [InvId] = @InvId">
        <DeleteParameters>
            <asp:Parameter Name="InvId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="InvId" Type="Int32" />
            <asp:Parameter Name="InvIteam" Type="String" />
            <asp:Parameter Name="InvWeight" Type="Decimal" />
            <asp:Parameter Name="InvPrice" Type="Decimal" />
            <asp:Parameter Name="InvRetailer" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="InvIteam" Type="String" />
            <asp:Parameter Name="InvWeight" Type="Decimal" />
            <asp:Parameter Name="InvPrice" Type="Decimal" />
            <asp:Parameter Name="InvRetailer" Type="String" />
            <asp:Parameter Name="InvId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="New" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="InvId" DataSourceID="SqlDataSource2" Height="50px" Width="125px" OnItemCommand="DetailsView1_ItemCommand" OnItemInserted="DetailsView1_ItemInserted" OnItemUpdated="DetailsView1_ItemUpdated" Visible="False">
        <Fields>
            <asp:BoundField DataField="InvId" HeaderText="InvId" ReadOnly="True" SortExpression="InvId" />
            <asp:BoundField DataField="InvIteam" HeaderText="InvIteam" SortExpression="InvIteam" />
            <asp:BoundField DataField="InvWeight" HeaderText="InvWeight" SortExpression="InvWeight" />
            <asp:BoundField DataField="InvPrice" HeaderText="InvPrice" SortExpression="InvPrice" />
            <asp:BoundField DataField="InvRetailer" HeaderText="InvRetailer" SortExpression="InvRetailer" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Width="409px">
        <Series>
            <asp:Series Name="Series1" XValueMember="InvRetailer" YValueMembers="InvPrice">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
    <br />
    </asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

