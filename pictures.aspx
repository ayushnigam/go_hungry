<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="pictures.aspx.cs" Inherits="pictures" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Entree], [Image] FROM [Menu]"></asp:SqlDataSource>
         <asp:ListView ID="ListView1" runat="server" DataKeyNames="Image" DataSourceID="SqlDataSource1" GroupItemCount="3">
            <AlternatingItemTemplate>
                <td runat="server" style="background-color:#FFF8DC;">
                    <table> 
                        <tr>
                            <td>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Image", "BigImage.aspx?selectedtitle={0}") %>'>
                                <asp:Image ID="Image1" ImageUrl='<%# Eval("Image", "Images/{0}.jpg") %>'  runat="server" height="100" Width="100"/>
                                    </asp:HyperLink>
                                </td>
                         </tr>
                      </table>              
                    </td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">
                    <asp:Label ID="ImageLabel1" runat="server" Text='<%# Eval("Label") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br /></td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
<td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">
                    <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br /></td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="background-color:#DCDCDC;color: #000000;">

                    <table> 

                        <tr>

                            <td>

                          <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Image", "BigImage.aspx?selectedtitle={0}") %>'>
                                <asp:Image ID="Image1" ImageUrl='<%# Eval("Image", "Images/{0}.jpg") %>'  runat="server" height="100" Width="100"/>
                                    </asp:HyperLink>
                                </td>
                        </tr>
                      </table>  
                        </td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                    <asp:Label ID="ImageLabel" runat="server" Text='<%# Eval("Image") %>' />
                    <br />
                    </td>
            </SelectedItemTemplate>
        </asp:ListView>


    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

