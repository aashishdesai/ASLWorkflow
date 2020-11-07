<%@ Page Title="" Language="C#" MasterPageFile="~/WorkflowMaster.Master" AutoEventWireup="true" CodeBehind="WorkflowStatusReviewScreen.aspx.cs" Inherits="ASLWorkflow.WorkflowStatusReviewScreen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="WFStdReport">
<table class="pageheader">
        <tr>
            <td >
                <asp:Label ID="lblWorkflowStatusReviewScreen" runat="server" Text="<% $Resources:lblWorkflowStatusReviewScreen %>"></asp:Label>
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




    <table style="width: 100%">
        <tr>
            <td class="orangetext" colspan="4">
                <asp:Label ID="lblFilters" runat="server" Text="<% $Resources:lblFilters %>"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="Column7">
                <asp:Label ID="lblSubjectEmployees" runat="server" Text="<% $Resources:lblSubjectEmployees %>"></asp:Label>
            </td>
            <td >
                <asp:DropDownList ID="drpdwnSubjectEmployees" runat="server">
                </asp:DropDownList>
            </td>
            <td >
                </td>
            <td >
                </td>
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
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblWorkflowName" runat="server" Text="<% $Resources:Resource, lblWorkflowName %>"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="drpdwnWorkflowName" runat="server">
                </asp:DropDownList>
            </td>
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
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblWorkflowStatus" runat="server" Text="<% $Resources:lblWorkflowStatus %>"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="drpdwnWorkflowStatus" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr >
            <td class="columnright" colspan="4">
                <asp:Button ID="btnClear" class="lpbutton" runat="server" Text="<% $Resources:btnClear %>" />
                <asp:Button ID="btnShow" class="lpbutton" runat="server" Text="<% $Resources:btnShow %>" />
            </td>
        </tr>
    </table>
    <br />
    <table >
        <tr id="button">
            <th>
                Employee</th>
            <th>
                Workflow Name</th>
            <th>
                Status</th>
            <th>
                Started<br />
                TimeStamp</th>
            <th>
                Last<br />
                Updated<br />
                TimeStamp</th>
            <th>
                Message Sent TO:</th>
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
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />



    </div>
</asp:Content>

