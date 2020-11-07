<%@ Page Title="" Language="C#" MasterPageFile="~/WorkflowMaster.Master" AutoEventWireup="true"
    CodeBehind="SetupWorkflow.aspx.cs" Inherits="ASLWorkflow.SetupWorkflow"
    EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="EditSelectWF">
        <table class="pageheader">
            <tr>
                <td>
                    <asp:Label ID="lblSetupWorkflow" runat="server" Text="<% $Resources:lblSetupWorkflow %>"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <div class="buttonalignment">
            <asp:Button ID="btnReturn" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnReturn %>" OnClick="btnReturn_Click" />
        </div>
        <asp:Label ID="lblResult" runat="server"></asp:Label>
        <br />
        <br />
        <table>
            <tr>
                <td colspan="2">
                    <strong>
                        <asp:Label ID="lblDisplay" runat="server" Text="<% $Resources:lblDisplay %>"></asp:Label>
                    </strong>
                </td>
                <td colspan="2" class="columnright">
                    <asp:Button ID="btnApply" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnApply %>" OnClick="btnApply_Click" />
                </td>
            </tr>
            <tr>
                <td class="Column13">
                    <asp:Label ID="lblNameLike" runat="server" Text="<% $Resources:lblNameLike %>"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtboxName" class="bluebordertxtbox" runat="server"></asp:TextBox>
                </td>
                <td class="columnright">
                    <asp:Button ID="btnShowALL" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnShowALL %>" 
                        onclick="btnShowALL_Click" />
                </td>
            </tr>
        </table>
        <br />
        <div>
            <asp:GridView ID="GridViewSelectWorkflow" runat="server" Font-Bold="True" AutoGenerateColumns="False"
                BackColor="White" BorderColor="Navy" BorderStyle="Solid" BorderWidth="1px" CellPadding="3"
                ForeColor="Navy" AllowPaging="True" AllowSorting="True" OnDataBound="grdListings_DataBound"
                PageSize="10" OnRowCommand="GridViewSelectWorkflow_RowCommand">
                <PagerTemplate>
                    <asp:ImageButton ID="ImageButton1" OnCommand="Paginate" runat="server" ImageUrl="~/Images/navigatebeginning.gif"
                        CommandArgument="First" CommandName="Page" />
                    <asp:ImageButton ID="ImageButton2" OnCommand="Paginate" runat="server" ImageUrl="~/Images/navigateleft.gif"
                        CommandArgument="Prev" CommandName="Page" />
                    <asp:Label ID="lblPageNo" runat="server"></asp:Label>
                    -
                    <asp:Label ID="lblPageNoTo" runat="server"></asp:Label>
                    of
                    <asp:Label ID="lblPageCount" runat="server"></asp:Label>
                    <asp:ImageButton ID="ImageButton3" OnCommand="Paginate" runat="server" ImageUrl="~/Images/navigateright.gif"
                        CommandArgument="Next" CommandName="Page" />
                    <asp:ImageButton ID="ImageButton4" OnCommand="Paginate" runat="server" ImageUrl="~/Images/navigateend.gif"
                        CommandArgument="Last" CommandName="Page" />
                </PagerTemplate>
                <FooterStyle ForeColor="#000080" BackColor="#91CDDB"></FooterStyle>
                <PagerStyle ForeColor="#000080" HorizontalAlign="Left" BackColor="White"></PagerStyle>
                <HeaderStyle ForeColor="#000080" Font-Bold="True" HorizontalAlign="Center" BackColor="#91CDDB">
                </HeaderStyle>
                <AlternatingRowStyle ForeColor="#000080" BackColor="#DBEEF4" />
                <Columns>
                    <asp:BoundField HeaderText="Name" DataField="Name">
                        <HeaderStyle Font-Underline="True" />
                        <ItemStyle Width="80%"></ItemStyle>
                    </asp:BoundField>
                    <asp:ImageField HeaderText="Inactive" DataImageUrlField="Inactive">
                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        <ItemStyle Width="10%"></ItemStyle>
                    </asp:ImageField>
                    <asp:ButtonField HeaderText="" ButtonType="Image" ImageUrl="~/Images/edit.gif" DataTextField="Edit"
                        CommandName="Edit_click" Text="hi" >
                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        <ItemStyle Width="10%"></ItemStyle>
                    </asp:ButtonField>
                    </Columns>
                <SelectedRowStyle ForeColor="#000080" Font-Bold="True" BackColor="#000099"></SelectedRowStyle>
                <SortedAscendingCellStyle ForeColor="#000080" BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle ForeColor="#000080" BackColor="#808080" />
                <SortedDescendingCellStyle ForeColor="#000080" BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle ForeColor="#000080" BackColor="#383838" />
            </asp:GridView>
        </div>
    </div>
</asp:Content>
