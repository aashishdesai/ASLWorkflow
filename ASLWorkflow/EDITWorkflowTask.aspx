<%@ Page Title="" Language="C#" MasterPageFile="~/WorkflowMaster.Master" AutoEventWireup="true"
    CodeBehind="EDITWorkflowTask.aspx.cs" Inherits="ASLWorkflow.EDITWorkflowTask" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="bodyfontcolor">
    <table class="pageheader">
        <tr>
            <td >
                <asp:Label ID="lblEditWorkflowTask" runat="server" Text="<% $Resources:lblEditWorkflowTask %>"></asp:Label>
            </td>
        </tr>
    </table>
    <asp:Label ID="lbl" runat="server"></asp:Label>
    <br />
    <div class="buttonalignment">
        <asp:Button ID="btnAdd" class="lpbutton" runat="server" 
            Text="<% $Resources:Resource, btnAdd %>" onclick="btnAdd_Click" />
        &nbsp;<asp:Button ID="btnBack" class="lpbutton" runat="server" 
            Text="<% $Resources:Resource, btnBack %>" onclick="btnBack_Click" />
        &nbsp;<asp:Button ID="btnReturn" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnReturn %>" 
            onclick="btnReturn_Click" />
    </div>
    <br />
    <div id="WFTask">
    <table id="bolds">
        <tr>
            <td class="Column4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="Column4">
                <asp:Label ID="lblWorkflow" runat="server" Text="<% $Resources:lblWorkflow %>"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtboxWorkflow" runat="server" Enabled="False" Width="50%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="Column4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblStepName" runat="server" Text="<% $Resources:lblStepName %>"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtboxStepName" runat="server" Enabled="False" Width="50%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
        <asp:GridView ID="GridViewWFStepsNames" runat="server" Font-Bold="True" AutoGenerateColumns="False"
                BackColor="White" BorderColor="Navy" BorderStyle="Solid" 
            BorderWidth="1px" CellPadding="3"
                ForeColor="Navy" AllowPaging="True" AllowSorting="True" OnDataBound="grdListings_DataBound"
                PageSize="10" onrowcommand="GridViewSelectWorkflow_RowCommand">
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
                    <asp:BoundField HeaderText="TO:" DataField="Name">
                        <HeaderStyle Font-Underline="True" />
                        <ItemStyle Width="70%"></ItemStyle>
                    </asp:BoundField>
                     <asp:BoundField HeaderText="" DataField="Id">
                        <HeaderStyle Font-Underline="True" />
                        <ItemStyle Width="85%"></ItemStyle>
                    </asp:BoundField>
                     <asp:ButtonField ButtonType="Image" ImageUrl="~/Images/delete2.gif" 
                                        CommandName="delete_click" Text="delete" HeaderText="">
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        <ItemStyle Width="10%"></ItemStyle>
                                        </asp:ButtonField>
                                    <asp:ButtonField ButtonType="Image" ImageUrl="~/Images/form.png" 
                                       CommandName="form_click" Text="package" >
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        <ItemStyle Width="10%"></ItemStyle>
                                        </asp:ButtonField>
                                        <asp:ButtonField ButtonType="Image" ImageUrl="~/Images/taskcheck.png" 
                                       CommandName="chklist_click" Text="package" >
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        <ItemStyle Width="10%"></ItemStyle>
                                        </asp:ButtonField>

<%--                    <asp:TemplateField>
            <ItemTemplate>
                <asp:ImageButton ID="btnDelete" ImageUrl="~/Images/delete2.gif"   runat="server" >

                </asp:ImageButton>
                    <asp:ImageButton ID="btnForm" ImageUrl="~/Images/form.png" CommandName="form_click"   runat="server" />
                <asp:ImageButton ID="btnChecklist" ImageUrl="~/Images/taskcheck.png" CommandName="chklist_click"  runat="server" />
                
            </ItemTemplate> 
            <ItemStyle HorizontalAlign="Center"></ItemStyle>    
            <ItemStyle Width="15%"></ItemStyle>           
        </asp:TemplateField>--%>
                   
                   
                    </Columns>
                <SelectedRowStyle ForeColor="#000080" Font-Bold="True" BackColor="#000099"></SelectedRowStyle>
                <SortedAscendingCellStyle ForeColor="#000080" BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle ForeColor="#000080" BackColor="#808080" />
                <SortedDescendingCellStyle ForeColor="#000080" BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle ForeColor="#000080" BackColor="#383838" />
        </asp:GridView>
    </div>
    </div>
    <br />
    <br />

</asp:Content>
