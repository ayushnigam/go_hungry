<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

          
  
    <div>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [Style] FROM [Menu]"></asp:SqlDataSource>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Style" DataValueField="Style" OnDataBinding="Page_Load"></asp:DropDownList>
                    
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        
                    <asp:SqlDataSource ID="SqlDataSource2"  runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Image], [Entree] FROM [Menu] WHERE ([style] = @style)    ">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="Chineese" Name="style" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
             </asp:SqlDataSource>
                    
                    <br />
         <br />
                    <asp:ListView ID="ListView1" DataKeyNames="Image" runat="server" DataSourceID="SqlDataSource2" GroupItemCount="2">
            
            
        <AlternatingItemTemplate>
                <td runat="server" style="background-color:#FFF8DC;">
                    <table> 

                        <tr>

                            <td>

                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Image", "MenuDetail.aspx?selectedImage={0}") %>'>
                                <asp:Image ID="Image1" ImageUrl='<%# Eval("Image", "Images/{0}.jpg") %>'  runat="server" height="100" Width="100"/>
                                    </asp:HyperLink>
                                </td>

                             <td>

                                 Entree:
                    <asp:Label ID="EntreeLabel" runat="server" Text='<%# Eval("Entree") %>' />
                                 <br /><br />
                                 
                                </td>
                    
                    
                    
                        </tr>
                      </table>  
                    </td>

            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">
                    <asp:Label ID="title_idLabel1" runat="server" Text='<%# Eval("Image") %>' />
                    <br />
                    Entree:
                    <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("Entree") %>' />
                    <br />price:
                    <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
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
                <td runat="server" style="">Image
                    <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
                    <br />Entree:
                    <asp:TextBox ID="EntreeTextBox" runat="server" Text='<%# Bind("Entree") %>' />
                    <br />price:
                    <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
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

                             
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Image", "Menudetail.aspx?selectedImage={0}") %>'>
                                <asp:Image ID="Image1" ImageUrl='<%# Eval("Image", "Images/{0}.jpg") %>'  runat="server" height="100" Width="100" />
                                    </asp:HyperLink>
                                </td>

                             <td>

                               
                    <asp:Label ID="EntreeLabel" runat="server" Text='<%# Eval("Entree") %>' />
                                 <br />
                                 
                                 
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
                    Image:
                    <asp:Label ID="ImageLabel" runat="server" Text='<%# Eval("Image") %>' />
                    <br />Entree:
                    <asp:Label ID="EntreeLabel" runat="server" Text='<%# Eval("Entree") %>' />
                    <br />price:
                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                    <br /></td>
            </SelectedItemTemplate>
        </asp:ListView>
        <br />
        <br />
        <br />
    </div>
  


</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

