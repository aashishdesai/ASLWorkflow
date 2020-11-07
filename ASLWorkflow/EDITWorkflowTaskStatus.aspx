<%@ Page Title="" Language="C#" MasterPageFile="~/WorkflowMaster.Master" AutoEventWireup="true" CodeBehind="EDITWorkflowTaskStatus.aspx.cs" Inherits="ASLWorkflow.EDITWorkflowTaskStatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="bodyfontcolor">
        <table class="pageheader">
            <tr>
                <td >
                    <asp:Label ID="lblEditWorkflowTaskStatus" runat="server" Text="<% $Resources:lblEditWorkflowTaskStatus %>"></asp:Label>
                </td>
            </tr>
        </table>

        <br />

    
    <table class="WFStatus">
        <tr>
            <td class="Column25">
                <asp:Label ID="lblName" runat="server" Text="<% $Resources:Resource, lblName %>"></asp:Label>
            </td>
            <td class="Column25">
                &nbsp;</td>
            <td class="Column25">
                <asp:Label ID="lblHireDate" runat="server" Text="<% $Resources:lblHireDate %>"></asp:Label></td>
            <td class="Column25">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblID" runat="server" Text="<% $Resources:lblID %>"></asp:Label></td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblStatus" runat="server" Text="<% $Resources:lblStatus %>"></asp:Label></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblLocation" runat="server" Text="<% $Resources:lblLocation %>"></asp:Label></td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblDivision" runat="server" Text="<% $Resources:lblDivision %>"></asp:Label></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPosition" runat="server" Text="<% $Resources:lblPosition %>"></asp:Label></td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblDepartment" runat="server" Text="<% $Resources:lblDepartment %>"></asp:Label></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
               <asp:Label ID="lblSupervisor" runat="server" Text="<% $Resources:lblSupervisor %>"></asp:Label></td>
            <td>
                &nbsp;</td>
            <td>
               <asp:Label ID="lblSupervisingPosition" runat="server" Text="<% $Resources:lblSupervisingPosition %>"></asp:Label></td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
    
    <div class="buttonalignment" >
    <asp:Button ID="btnBack" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnBack %>" 
            onclick="btnBack_Click" />
        <asp:Button ID="btnReturn" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnReturn %>" 
            onclick="btnReturn_Click" />
        </div>
        <br />
        <br />


        <table class="WFStatus2">
            <tr>
                <td class="Column25">
                    <asp:Label ID="lblWorkflowName" runat="server" Text="<% $Resources:Resource, lblWorkflowName %>"></asp:Label>
                </td>
                <td class="Column25">
                    &nbsp;</td>
                <td class="Column25">
                    <asp:Label ID="lblStatus2" runat="server" Text="<% $Resources:lblStatus2 %>"></asp:Label>
                </td>
                <td class="Column25">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblDateStarted" runat="server" Text="<% $Resources:lblDateStarted %>"></asp:Label></td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <table class="WFStatus2">
            <tr>
                <td class="Column25">
                    <asp:Label ID="lblWorkflowStep" runat="server" Text="<% $Resources:lblWorkflowStep %>"></asp:Label>
                </td>
                <td class="Column25">
                    &nbsp;</td>
                <td class="Column25">
                    <asp:Label ID="lblStatus3" runat="server" Text="<% $Resources:lblStatus3 %>"></asp:Label>
                </td>
                <td class="Column25">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblDateStarted2" runat="server" Text="<% $Resources:lblDateStarted2 %>"></asp:Label></td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <table >
        <tr id="button">
            <th>
                <asp:Label ID="lblToEmployee" runat="server" Text="<% $Resources:lblToEmployee %>"></asp:Label>
            </th>
            <th>
                <asp:Label ID="lblTaskStatus" runat="server" Text="<% $Resources:lblTaskStatus %>"></asp:Label>
            </th>
            <th>
                <asp:Label ID="lblLastUpdatedbyEmpName" runat="server" Text="<% $Resources:lblLastUpdatedbyEmpName %>"></asp:Label>
            </th>
            <th>
                <asp:Label ID="lblDateLastUpdated" runat="server" Text="<% $Resources:lblDateLastUpdated %>"></asp:Label>
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
        </tr>
    </table>
    <br />


    </div>
</asp:Content>
