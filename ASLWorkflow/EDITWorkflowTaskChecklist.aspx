<%@ Page Title="" Language="C#" MasterPageFile="~/WorkflowMaster.Master" AutoEventWireup="true"
    CodeBehind="EDITWorkflowTaskChecklist.aspx.cs" Inherits="ASLWorkflow.EDITWorkflowTaskChecklist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="bodyfontcolor">
        <table class="pageheader">
            <tr>
                <td>
                    <asp:Label ID="lblEditTaskChklist" runat="server" Text="<% $Resources:lblEditTaskChklist %>"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <div class="buttonalignment">
           <%-- <asp:Button ID="btnAdd" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnAdd %>" />--%>
           <asp:Button ID="ButtonAdd" class="lpbutton" runat="server" Text="Add"
                        onclick="ButtonAdd_Click" />
            <asp:Button ID="btnSave" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnSave %>" />
            <asp:Button ID="btnCancel" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnCancel %>" />
            <asp:Button ID="btnBack" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnBack %>"
                OnClick="btnBack_Click" />
            <asp:Button ID="btnReturn" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnReturn %>"
                OnClick="btnReturn_Click" />
            <br />
        </div>
        <br />
    
    <asp:HiddenField ID="hiddenWFName" runat="server" />
    
    <asp:HiddenField ID="hiddenStepName" runat="server" />
    <asp:HiddenField ID="hiddenStepID" runat="server" />
        <br />
        <div id="bolds">
            <table>
                <tr>
                    <td colspan="4">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblLanguage" runat="server" Text="<% $Resources:Resource, lblLanguage %>"></asp:Label>
                    </td>
                    <td colspan="3">
                        <asp:TextBox ID="txtboxLanguage" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblWorkflowCode" runat="server" Text="<% $Resources:lblWorkflowCode %>"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtboxWFCode" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lblCreated" runat="server" Text="<% $Resources:lblCreated %>"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtboxCreated" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblWorkflowName" runat="server" Text="<% $Resources:Resource, lblWorkflowName %>"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtboxWFName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lblCreatedBy" runat="server" Text="<% $Resources:lblCreatedBy %>"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtboxCreatedBy" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblStepNumber" runat="server" Text="<% $Resources:lblStepNumber %>"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtboxStepNo" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lblLastUpdated" runat="server" Text="<% $Resources:lblLastUpdated %>"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtboxLastUpdated" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblStepName" runat="server" Text="<% $Resources:lblStepName %>"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtboxStepName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lblUpdated" runat="server" Text="<% $Resources:lblUpdated %>"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtboxUpdatedBy" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblTaskNumber" runat="server" Text="<% $Resources:lblTaskNumber %>"></asp:Label>
                    </td>
                    <td colspan="3">
                        <asp:TextBox ID="txtboxTaskNo" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        &nbsp;
                    </td>
                </tr>
            </table>
            <br />
           <%-- <asp:GridView ID="GridViewTaskChecklist" runat="server" Font-Bold="True" AutoGenerateColumns="False"
                BackColor="White" BorderColor="Navy" BorderStyle="Solid" BorderWidth="1px" CellPadding="3"
                ForeColor="Navy" AllowPaging="True" AllowSorting="True">
               
                <FooterStyle ForeColor="#000080" BackColor="#91CDDB"></FooterStyle>
                <PagerStyle ForeColor="#000080" HorizontalAlign="Left" BackColor="White"></PagerStyle>
                <HeaderStyle ForeColor="#000080" Font-Bold="True" HorizontalAlign="Center" BackColor="#91CDDB">
                </HeaderStyle>
                <AlternatingRowStyle ForeColor="#000080" BackColor="#DBEEF4" />
                <Columns>
                    <asp:TemplateField HeaderText="Checkbox">
                        <ItemTemplate>
                            <asp:CheckBox ID="chkRow" HeaderText="Description" runat="server" />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        <ItemStyle Width="15%"></ItemStyle>
                    </asp:TemplateField>
                    <asp:BoundField HeaderText="Description" DataField="Name">
                    <ItemStyle HorizontalAlign="Left"></ItemStyle>
                        <ItemStyle Width="75%"></ItemStyle>
                    </asp:BoundField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton ID="btnDelete" ImageUrl="~/Images/delete2.gif" runat="server"></asp:ImageButton>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        <ItemStyle Width="10%"></ItemStyle>
                    </asp:TemplateField>
                </Columns>
                <SelectedRowStyle ForeColor="#000080" Font-Bold="True" BackColor="#000099"></SelectedRowStyle>
                <SortedAscendingCellStyle ForeColor="#000080" BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle ForeColor="#000080" BackColor="#808080" />
                <SortedDescendingCellStyle ForeColor="#000080" BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle ForeColor="#000080" BackColor="#383838" />
            </asp:GridView>--%>


            <asp:gridview ID="Gridview1" runat="server" ShowFooter="false"
            AutoGenerateColumns="False" onrowcreated="Gridview1_RowCreated" 
                onselectedindexchanged="Gridview1_SelectedIndexChanged">
            <Columns>
            <asp:BoundField DataField="RowNumber" HeaderText="Row Number" >
            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                            <ItemStyle Width="10%"></ItemStyle>
            </asp:BoundField>

            <asp:TemplateField HeaderText="Description">
                <ItemTemplate>
                    <asp:TextBox ID="TextBox1" Width="99%" BorderColor="Transparent" runat="server">
                    </asp:TextBox>

                </ItemTemplate>
            </asp:TemplateField>
                 <asp:TemplateField>
                <ItemTemplate>


                    <%--<asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Remove
                    </asp:LinkButton>--%>
                    
     <asp:ImageButton ID="LinkButton1" runat="server" CausesValidation="false" CommandName="" ImageUrl="~/Images/delete2.gif" Text="" OnClick="LinkButton1_Click" ToolTip="Add Row">

     </asp:ImageButton>
</ItemTemplate>
                    
             
            </asp:TemplateField>
            </Columns>
        </asp:gridview>
        </div>
    </div>
    <br />
</asp:Content>
