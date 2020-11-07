<%@ Page Title="" Language="C#" MasterPageFile="~/WorkflowMaster.Master" AutoEventWireup="true" CodeBehind="RUNManInitiateWorkflow.aspx.cs" Inherits="ASLWorkflow.RUNManInitiateWorkflow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="initWF">
    <table class="pageheader">
        <tr>
            <td>
                <asp:Label ID="lblRunManInitiateWF" runat="server" Text="<% $Resources:lblRunManInitiateWF %>"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <div class="buttonalignment" >
        
        <asp:Button ID="btnInitiate" class="lpbutton" runat="server" Text="<% $Resources:btnInitiate %>" />
        <asp:Button ID="btnReturn" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnReturn %>" 
            onclick="btnReturn_Click" />
    </div>
    <br />
    <br />
    <table class="fontcolor">
        <tr>
            <td class="Column6">
                <asp:Label ID="lblWorkflowName" runat="server" Text="<% $Resources:Resource, lblWorkflowName %>" 
                    style="font-weight: 700"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtBoxWorkflowName" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    <br />
     <div id="frame">
    <table class="fontcolor">
        <tr>
            <td colspan="3">
                <b>
                    <asp:Label ID="lblSelectSubject" runat="server" Text="<% $Resources:lblSelectSubject %>"></asp:Label>
                    &nbsp;<asp:Label ID="lblMessage" runat="server" Text="<% $Resources:lblMessage %>"></asp:Label></b>
            </td>
        </tr>
        <tr>
            <td class="Column6">
                <asp:Label ID="lblSearchBy" runat="server" Text="<% $Resources:lblSearchBy %>"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="dropDownSearch" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblFilterBy" runat="server" Text="<% $Resources:lblFilterBy %>"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtBoxFilterBy" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                    <asp:Label ID="lblSearchEmployee" runat="server" Text="<% $Resources:lblSearchEmployee %>"></asp:Label>
            </td>
            <td>
                <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnAdd" runat="server" Text="<% $Resources:Resource, btnAdd %>" />
            </td>
        </tr>
        
    </table>
      
    </div>
    </div>
    <br />
</asp:Content>
