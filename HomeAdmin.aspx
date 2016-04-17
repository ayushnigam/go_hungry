<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HomeAdmin.aspx.cs" Inherits="HomeAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
        <a href="Welcome.aspx">Go Back To Welcome Page</a>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Special] WHERE [SpeId] = @SpeId" InsertCommand="INSERT INTO [Special] ([SpeId], [SpeImage], [Description]) VALUES (@SpeId, @SpeImage, @Description)" SelectCommand="SELECT * FROM [Special]" UpdateCommand="UPDATE [Special] SET [SpeImage] = @SpeImage, [Description] = @Description WHERE [SpeId] = @SpeId">
        <DeleteParameters>
            <asp:Parameter Name="SpeId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="SpeId" Type="Int32" />
            <asp:Parameter Name="SpeImage" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="SpeImage" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="SpeId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>



    <asp:DetailsView DataKeyNames="SpeId" ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataSourceID="SqlDataSource1" OnItemUpdated="DetailsView1_ItemUpdated" OnItemInserted="DetailsView1_ItemInserted">
        <Fields>
            <asp:TemplateField SortExpression="SpeImage">
                <EditItemTemplate>
                    <img src='SpecialImage/<%# Eval("SpeImage") %>'  height="300"/>                

                    <asp:FileUpload ID="FileUpload1" runat="server" OnUnload="FileUpload1_Unload" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("SpeImage") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                   <img src='SpecialImage/<%# Eval("SpeImage") %>'  height="300"/>                

                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField SortExpression="Description">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Height="61px" Text='<%# Bind("Description") %>' Width="287px"></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Description") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" />
        </Fields>
    </asp:DetailsView>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

