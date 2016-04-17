<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home1.aspx.cs" Inherits="Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 137px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">



    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Special]" DeleteCommand="DELETE FROM [Special] WHERE [SpeId] = @SpeId" InsertCommand="INSERT INTO [Special] ([SpeId], [SpeImage], [Description]) VALUES (@SpeId, @SpeImage, @Description)" UpdateCommand="UPDATE [Special] SET [SpeImage] = @SpeImage, [Description] = @Description WHERE [SpeId] = @SpeId">
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




    <table style="width: 100%;" >
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" DataSourceID="SqlDataSource1" AutoGenerateRows="False" style="margin-left: 62px">
        <Fields>
            <asp:TemplateField SortExpression="SpeImage">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("SpeImage") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("SpeImage") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>

        <img src='SpecialImage/<%# Eval("SpeImage") %>'  height="350"/>                

                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Description" SortExpression="Description" />
        </Fields>
    </asp:DetailsView>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>