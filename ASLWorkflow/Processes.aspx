<%@ Page Title="" Language="C#" MasterPageFile="~/WorkflowMaster.Master" AutoEventWireup="true"
    CodeBehind="Processes.aspx.cs" Inherits="ASLWorkflow.Processes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="bodyfontcolor">
        <table class="pageheader">
            <tr>
                <td>
                    <asp:Label ID="lblProcess" runat="server" Text="<% $Resources:lblProcess %>"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <div class="buttonalignment">
            <asp:Button ID="btnAdd" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnAdd %>" />
            <asp:Button ID="btnReturn" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnReturn %>" />
        </div>
        <br />
        <br />
        <table style="width: 100%">
            <tr id="button">
                <th class="columncentre">
                    <asp:Label ID="lblName" runat="server" Text="<% $Resources:lblName %>"></asp:Label>
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
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
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
