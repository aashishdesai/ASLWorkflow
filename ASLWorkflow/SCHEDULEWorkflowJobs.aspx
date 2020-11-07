<%@ Page Title="" Language="C#" MasterPageFile="~/WorkflowMaster.Master" AutoEventWireup="true" CodeBehind="SCHEDULEWorkflowJobs.aspx.cs" Inherits="ASLWorkflow.SCHEDULEWorkflowJobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div id="bodyfontcolor">
    <table class="pageheader">
        <tr>
            <td>
                <asp:Label ID="lblScheduleWorkflowJobs" runat="server" Text="<% $Resources:lblScheduleWorkflowJobs %>"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <div class="buttonalignment" >
       
        <asp:Button ID="btnAdd" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnAdd %>" />
        <asp:Button ID="btnBack" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnBack %>" />
        <asp:Button ID="btnReturn" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnReturn %>" />
    </div>
<br />
<br />

<table>
        <tr>
            <td class="Column6">
                <asp:Label ID="lblWorkflowName" runat="server" Text="<% $Resources:Resource, lblWorkflowName %>"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtBoxWorkflowName" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    <br />
<table >
        <tr id="button">
            <th class="columncentre">
                <asp:Label ID="lblInstanceNumber" runat="server" Text="<% $Resources:lblInstanceNumber %>"></asp:Label>
            </th>
            <th class="columncentre">
                <asp:Label ID="lblDateSaved" runat="server" Text="<% $Resources:lblDateSaved %>"></asp:Label>
            </th>
            <th>
                &nbsp;
            </th>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        </table>
        <br />

</div>
    
</asp:Content>
