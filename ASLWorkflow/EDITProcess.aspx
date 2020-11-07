<%@ Page Title="" Language="C#" MasterPageFile="~/WorkflowMaster.Master" AutoEventWireup="true" CodeBehind="EDITProcess.aspx.cs" Inherits="ASLWorkflow.EDITProcess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="bodyfontcolor">
<table class="pageheader">
        <tr>
            <td>
                <asp:Label ID="lblEditProcess" runat="server" Text="<% $Resources:lblEditProcess %>"></asp:Label></td>
        </tr>
    </table>
    
    <br />
    <div class="buttonalignment" >
        <asp:Button ID="btnAdd" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnAdd %>" />
        <asp:Button ID="btnDelete" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnDelete %>" />
        <asp:Button ID="btnEdit" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnEdit %>" />
        <asp:Button ID="btnSave" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnSave %>" />
        <asp:Button ID="btnCancel" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnCancel %>" />
        <asp:Button ID="btnBack" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnBack %>" />
        <asp:Button ID="btnReturn" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnReturn %>" />
    </div>
    <br />
    <br />
    <div  id="editWFSteps">
     <div id="bolds">
    <table >
        <tr>
            <td class="Column10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td rowspan="5">
               
                &nbsp;</td>
            <td colspan="2" rowspan="5">
               
            </td>
        </tr>
        <tr>
            <td class="Column10">
                <asp:Label ID="lblName" runat="server" Text="<% $Resources:Resource, lblName %>"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtboxName" class="bluebordertxtbox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblModule" runat="server" Text="<% $Resources:lblModule %>"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownModule" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblCategory" runat="server" Text="<% $Resources:lblCategory %>"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownCategory" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        
        <tr>
            <td id="orangeheaders">
                <asp:Label ID="lblArea" runat="server" Text="<% $Resources:lblArea %>"></asp:Label>
            </td>
            <td class="columnleft"  rowspan="13">
                <asp:ListBox ID="ListBoxArea" class="AreaBox" runat="server"></asp:ListBox>
            </td>
            <td>
                &nbsp;</td>
            <td id="orangeheaders">
                <asp:Label ID="lblSteps" runat="server" Text="<% $Resources:lblSteps %>"></asp:Label> 
            </td>
            <td class="columnleft" rowspan="14"  >
                <asp:ListBox ID="ListBoxSteps" class="StepsBox" runat="server"></asp:ListBox></td>
        </tr>
        
        <tr>
            <td id="orangeheaders">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td id="orangeheaders">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td id="orangeheaders">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td id="orangeheaders">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td id="orangeheaders">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td id="orangeheaders">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td id="orangeheaders">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td id="orangeheaders">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td id="orangeheaders">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td id="orangeheaders">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td id="orangeheaders">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td id="orangeheaders">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td id="orangeheaders">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td id="orangeheaders">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td id="orangeheaders">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td id="orangeheaders">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td id="orangeheaders">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td id="orangeheaders">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td id="orangeheaders">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td id="orangeheaders">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td id="orangeheaders">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td id="orangeheaders">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td id="orangeheaders">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td id="orangeheaders">
                &nbsp;</td>
        </tr>
    </table>
    <br />
    </div>
    </div>
    </div>
</asp:Content>
