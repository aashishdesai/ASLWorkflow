<%@ Page Title="" Language="C#" MasterPageFile="~/WorkflowMaster.Master" AutoEventWireup="true"
    CodeBehind="WorkflowTaskStandardReport.aspx.cs" Inherits="ASLWorkflow.WorkflowTaskStandardReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="WFStdReport">
    <table class="pageheader">
        <tr>
            <td >
                <asp:Label ID="lblWorkflowReport" runat="server" Text="<% $Resources:lblWorkflowReport %>"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <div class="buttonalignment">
        <asp:Button ID="btnGenerate" class="lpbutton" runat="server" 
            Text="<% $Resources:btnGenerate %>" onclick="btnGenerate_Click" />
        <asp:Button ID="btnReturn" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnReturn %>" 
            onclick="btnReturn_Click" />
    </div>
    <br />
    <br />
    <div id="wfstdreport">
        <table>
            <tr>
                <td class="Column8">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="Column8">
                    <asp:Label ID="lblWorkflowName" runat="server" Text="<% $Resources:Resource, lblWorkflowName %>"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:DropDownList ID="ddlWorkflowName" runat="server"  AutoPostBack="true" DataTextField="Workflow_Name"
                        onselectedindexchanged="ddlWorkflowName_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="Column8">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblWorkflowStatus" runat="server" Text="<% $Resources:lblWorkflowStatus %>"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:DropDownList ID="ddlWorkflowStatus" runat="server" >
                        
                
                <asp:ListItem Text="In Progress" Value="In Progress"></asp:ListItem>
                <asp:ListItem Text="Completed" Value="Completed"></asp:ListItem>
                <asp:ListItem Text="Cancelled" Value="Cancelled"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblSubjectEmployees" runat="server" Text="<% $Resources:lblSubjectEmployees %>"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:DropDownList ID="ddlSubjectEmployee" runat="server"  AutoPostBack="true" AppendDataBoundItems="true"
                                DataTextField="Name">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="Column8">
                    <asp:Label ID="lblDateReport" runat="server" Text="<% $Resources:lblDateReport %>"></asp:Label>
                </td>
                <td>
                    <asp:CheckBox ID="cbReport1"  runat="server" Checked="True" />
                </td>
                <td>
                    <asp:Label ID="lblTaskForm" runat="server" Text="<% $Resources:lblTaskForm %>"></asp:Label><br />
                    
                        <asp:Label ID="lblOr" runat="server" Text="<% $Resources:lblOr %>"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:CheckBox ID="cbReport2" runat="server" />
                </td>
                <td>
                    <asp:Label ID="lblForTaskForm" runat="server" Text="<% $Resources:lblForTaskForm %>"></asp:Label><br />
                    
                        <asp:Label ID="lblOr1" runat="server" Text="<% $Resources:lblOr1 %>"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:CheckBox ID="cbReport3" runat="server" />
                </td>
                <td>
                    <asp:Label ID="lblForOnlyTask" runat="server" Text="<% $Resources:lblForOnlyTask %>"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;
                </td>
                <td class="columnright">
                    <asp:Button ID="btnClear" class="lpbutton" runat="server" 
                        Text="<% $Resources:btnClear %>" />
                </td>
            </tr>
        </table>
    </div>
    </div>
</asp:Content>