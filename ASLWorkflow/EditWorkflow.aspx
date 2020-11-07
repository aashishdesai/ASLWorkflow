<%@ Page Title="" Language="C#" MasterPageFile="~/WorkflowMaster.Master" AutoEventWireup="true" CodeBehind="EditWorkflow.aspx.cs" Inherits="ASLWorkflow.EditWorkflow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="EditWFPage">
    <table class="pageheader">
        <tr>
            <td>
                <asp:Label ID="lblEditWorkflow" runat="server" Text="<% $Resources:lblEditWorkflow %>"></asp:Label></td>
        </tr>
    </table>
    <br />
    <div class="buttonalignment">
            <asp:Button ID="btnAdd" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnAdd %>" />
            <asp:Button ID="btnEdit" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnEdit %>"  />

            <asp:Button ID="btnSave" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnSave %>"
                onclick="btnSave_Click" />
            <asp:Button ID="btnCancel" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnCancel %>"
                onclick="btnCancel_Click" />
            <asp:Button ID="btnReturn" class="lpbutton" runat="server" 
                Text="<% $Resources:Resource, btnReturn %>" onclick="btnReturn_Click1" />


            <%--<asp:Button ID="btnSave" btnSave runat="server" Text="Save" 
                onclick="btnSave_Click2"  />
            <asp:Button ID="btnCancel" class="lpbutton" runat="server" Text="Cancel" 
                onclick="btnCancel_Click" />
            <asp:Button ID="btnReturn" class="lpbutton" runat="server" Text="Return" OnClick="btnReturn_Click" />--%>
        </div>
        <br />
        <br />
         <div class="ResultLabel">
        <asp:Label ID="lblResult"  runat="server"></asp:Label>
        </div>
        <br />
    <br />
    
    <div  id="">
    <div id="bolds">
    <table>
    

        
        <tr>
            <td class="Column1">
                &nbsp;</td>
            <td >
                &nbsp;</td>
        </tr>
    

        
        <tr>
            <td class="Column1">
                <asp:Label ID="lblLanguage" runat="server"  Text="<% $Resources:Resource, lblLanguage %>" ></asp:Label></td>
            <td >
                <asp:TextBox ID="txtboxLanguage" runat="server" Enabled="False" Width="30%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="Column1" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblCode" runat="server" Text="<% $Resources:Resource, lblCode %>"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtboxCode" runat="server" Enabled="False" Width="20%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblWorkflowName" runat="server" Text="<% $Resources:Resource, lblWorkflowName %>" ></asp:Label></td>
            <td>
                <asp:TextBox ID="txtboxWFName" runat="server" Width="60%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblInactive" runat="server" Text="<% $Resources:Resource, lblInactive %>"></asp:Label></td>
            <td>
                <asp:CheckBox ID="CheckBoxInactive" runat="server" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
    </table>
    </div>
    </div>
    </div>
</asp:Content>
