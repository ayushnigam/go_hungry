<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminAd.aspx.cs" Inherits="AdimanAd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
        <a href="Welcome.aspx">Go Back To Welcome Page</a>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [AdvItem], [AdvPrice], [Adv_image], [AdvId] FROM [Adv]" DeleteCommand="DELETE FROM [Adv] WHERE [AdvId] = @AdvId" InsertCommand="INSERT INTO [Adv] ([AdvItem], [AdvPrice], [Adv_image], [AdvId]) VALUES (@AdvItem, @AdvPrice, @Adv_image, @AdvId)" UpdateCommand="UPDATE [Adv] SET [AdvItem] = @AdvItem, [AdvPrice] = @AdvPrice, [Adv_image] = @Adv_image WHERE [AdvId] = @AdvId">
        <DeleteParameters>
            <asp:Parameter Name="AdvId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="AdvItem" Type="String" />
            <asp:Parameter Name="AdvPrice" Type="String" />
            <asp:Parameter Name="Adv_image" Type="String" />
            <asp:Parameter Name="AdvId" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="AdvItem" Type="String" />
            <asp:Parameter Name="AdvPrice" Type="String" />
            <asp:Parameter Name="Adv_image" Type="String" />
            <asp:Parameter Name="AdvId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="AdvId" DataSourceID="SqlDataSource1" OnRowEditing="GridView1_RowEditing" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Button ID="LinkButton1" runat="server" CommandName="Select" Text="Edit" />
                    &nbsp;
                    <asp:Button ID="LinkButton2" runat="server" CommandName="Delete" Text="Delete" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="AdvItem" HeaderText="AdvItem" SortExpression="AdvItem" />
            <asp:BoundField DataField="AdvPrice" HeaderText="AdvPrice" SortExpression="AdvPrice" />
            <asp:TemplateField HeaderText="Image" SortExpression="Adv_image">
                <ItemTemplate>
                     <img src='AdvImage/<%# Eval("Adv_image") %>'  height="100"/>

                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
    <asp:Button ID="btnAddProduct" runat="server" Text="Add New" OnClick="btnAddProduct_Click1" />

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Adv] WHERE [AdvId] = @AdvId" InsertCommand="INSERT INTO [Adv] ([AdvId], [AdvItem], [AdvPrice], [Adv_image]) VALUES (@AdvId, @AdvItem, @AdvPrice, @Adv_image)" SelectCommand="SELECT [AdvId], [AdvItem], [AdvPrice], [Adv_image] FROM [Adv]
WHERE AdvId = @AdvId" UpdateCommand="UPDATE [Adv] SET [AdvItem] = @AdvItem, [AdvPrice] = @AdvPrice, [Adv_image] = @Adv_image WHERE [AdvId] = @AdvId">
        <DeleteParameters>
            <asp:Parameter Name="AdvId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="AdvId" Type="Int32" />
            <asp:Parameter Name="AdvItem" Type="String" />
            <asp:Parameter Name="AdvPrice" Type="String" />
            <asp:Parameter Name="Adv_image" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="AdvId" PropertyName="SelectedValue" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="AdvItem" Type="String" />
            <asp:Parameter Name="AdvPrice" Type="String" />
            <asp:Parameter Name="Adv_image" Type="String" />
            <asp:Parameter Name="AdvId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:DetailsView DataKeys="AdvId" ID="DetailsView1" runat="server" Height="50px" Width="125px" DataSourceID="SqlDataSource2" Visible="False" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="AdvId" OnItemCommand="DetailsView1_ItemCommand" OnItemDeleted="DetailsView1_ItemDeleted" OnItemInserted="DetailsView1_ItemInserted" OnItemInserting="DetailsView1_ItemInserting" OnItemUpdating="DetailsView1_ItemUpdating" OnItemUpdated="DetailsView1_ItemUpdated">
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <Fields>

            <asp:BoundField DataField="AdvId" HeaderText="Iteam ID" ReadOnly="True" SortExpression="AdvId" />
            <asp:BoundField DataField="AdvItem" HeaderText="Iteam Name" SortExpression="AdvItem" />
            <asp:BoundField DataField="AdvPrice" HeaderText="Iteam Price" SortExpression="AdvPrice" />
            <asp:TemplateField HeaderText="Image" SortExpression="Adv_image">
                <EditItemTemplate>
                    <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("Adv_image") %>' />
                    <img height="100" src='AdvImage/<%# Eval("Adv_image") %>' />
                    <br />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <br />
                    <asp:Label ID="lblUpload" runat="server"></asp:Label>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <img height="100" src='AdvImage/<%# Eval("Adv_image") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    </asp:DetailsView>



</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

