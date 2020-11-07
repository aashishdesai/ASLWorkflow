<%@ Page Title="" Language="C#" MasterPageFile="~/WorkflowMaster.Master" AutoEventWireup="true" CodeBehind="MyWorkflowTasks.aspx.cs" Inherits="ASLWorkflow.MyWorkflowTasks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="WFStdReport">
<table class="pageheader">
        <tr>
            <td >
                <asp:Label ID="lblMyWorkflowTasks" runat="server" Text="<% $Resources:lblMyWorkflowTasks %>"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <div class="buttonalignment" >
        <asp:Button ID="btnReturn" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnReturn %>" 
            onclick="btnReturn_Click" />
        </div>
<br />
<br />
<table >
        <tr id="button">
            <th>
                <asp:Label ID="lblWorkflowName" runat="server" Text="<% $Resources:Resource, lblWorkflowName %>"></asp:Label>
            </th>
            <th>
                <asp:Label ID="lblWorkflowMessageSubjectLine" runat="server" Text="<% $Resources:lblWorkflowMessageSubjectLine %>"></asp:Label>
            </th>
            <th>
                <asp:Label ID="lblStartedTimeStamp" runat="server" Text="<% $Resources:lblStartedTimeStamp %>"></asp:Label>
            </th>
            <th>
                <asp:Label ID="lblLastUpdatedTimeStamp" runat="server" Text="<% $Resources:lblLastUpdatedTimeStamp %>"></asp:Label>
            </th>
            <th>
                <asp:Label ID="lblMessageSentTO" runat="server" Text="<% $Resources:lblMessageSentTO %>"></asp:Label>
            </th>
            <th>
                &nbsp;</th>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />



    </div>
</asp:Content>

