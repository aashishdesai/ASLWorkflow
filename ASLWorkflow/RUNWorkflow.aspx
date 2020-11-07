<%@ Page Title="" Language="C#" MasterPageFile="~/WorkflowMaster.Master" AutoEventWireup="true" CodeBehind="RUNWorkflow.aspx.cs" Inherits="ASLWorkflow.RUNWorkflow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="bodyfontcolor">
        <table class="pageheader">
            <tr>
                <td >
                    <asp:Label ID="lblRunWorkflow" runat="server" Text="<% $Resources:lblRunWorkflow %>"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <div class="buttonalignment" >
        <asp:Button ID="btnReturn" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnReturn %>" />
        </div>
                <br />
        <br />
        <table>
            <tr>
                <td class="columnright" colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <strong>
                        <asp:Label ID="lblDisplay" runat="server" Text="<% $Resources:lblDisplay %>"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="Column1">
                    <asp:Label ID="lblNameLike" runat="server" Text="<% $Resources:lblNameLike %>"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtboxName" runat="server"></asp:TextBox>
                </td>
                <td class="columnright">
                    <asp:Button ID="btnApply" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnApply %>" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                </td>
                <td class="columnright">
                    <asp:Button ID="btnShowALL" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnShowALL %>" />
                </td>
            </tr>
        </table>
        <br />
        <table >
        <tr id="button">
            <th class="columncentre">
                <asp:Label ID="lblName" runat="server" Text="<% $Resources:Resource, lblName %>"></asp:Label>
            </th>
            <th class="columncentre">
                <asp:Label ID="lblInactive" runat="server" Text="<% $Resources:Resource, lblInactive %>"></asp:Label>
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
        <div>
        </div>
    </div>
</asp:Content>
