<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MenuDetail.aspx.cs" Inherits="MenuDetail1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div>

          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Image], [Entree], [Style], [Description] FROM [Menu] WHERE [Image] = @Image">
        <SelectParameters>
            <asp:QueryStringParameter Name="Image" QueryStringField="selectedImage" Type="String" />
        </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="Image" DataSourceID="SqlDataSource1" ForeColor="#333333" >
            <EditItemTemplate>
                
                <asp:Label ID="ImageLabel1" runat="server" Text='<%# Eval("Image") %>' />
                <br />
            
                <asp:TextBox ID="EntreeTextBox" runat="server" Text='<%# Bind("Entree") %>' />
                <br />
               
                <asp:TextBox ID="StyleTextBox" runat="server" Text='<%# Bind("style") %>' />
                <br />
               
                <asp:TextBox ID="DiscriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                <br />
             
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
               
                <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
                <br />
                
                <asp:TextBox ID="EntreeTextBox" runat="server" Text='<%# Bind("Entree") %>' />
                <br />
                
                <asp:TextBox ID="StyleTextBox" runat="server" Text='<%# Bind("style") %>' />
                <br />
                
                <asp:TextBox ID="DiscriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                <br />
            
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>

                <table>
                  <tr>
                    <td>

                        <asp:Image ID="Image1" runat="server" ImageUrl = '<%# Eval ("Image","Images/{0}.jpg") %>' Height="400" Width="400" />
                    </td>
                      <td>
                          
                <asp:Label ID="ImageLabel" runat="server" Text='<%# Eval("Image") %>' />
                <br />
                         
                <asp:Label ID="EntreeLabel" runat="server" Text='<%# Bind("Entree") %>' />
                <br />
                          
                <asp:Label ID="StyleLabel" runat="server" Text='<%# Bind("style") %>' />
                <br />
                
                <asp:Label ID="DiscriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
                <br />
                     

                      </td>
                  </tr>

                </table>
                

            </ItemTemplate>
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:FormView>






    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

