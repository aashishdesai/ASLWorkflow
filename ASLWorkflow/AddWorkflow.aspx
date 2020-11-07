<%@ Page Title="" Language="C#" MasterPageFile="~/WorkflowMaster.Master" AutoEventWireup="true"
    CodeBehind="AddWorkflow.aspx.cs" Inherits="ASLWorkflow.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="bodyfontcolor">
        <table class="pageheader">
            <tr>

                <td>
                    <asp:Label ID="lblAddWorkflow" runat="server" Text="<% $Resources:lblAddWorkflow %>"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <div class="buttonalignment">
            <asp:Button ID="btnAdd" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnAdd %>" 
                onclick="btnAdd_Click" />
            <asp:Button ID="btnEdit" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnEdit %>"  />
            <asp:Button ID="btnSave" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnSave %>" 
                onclick="btnSave_Click2"  />
            <asp:Button ID="btnCancel" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnCancel %>" 
                onclick="btnCancel_Click" />
            <asp:Button ID="btnReturn" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnReturn %>" OnClick="btnReturn_Click" />
        </div>
        <br />
        <br />
        <div class="ResultLabel">
        <asp:Label ID="lblResult"  runat="server" Text=""></asp:Label>
        </div>
        <br />
        <br />
        <div id="addWF">
            <div id="bolds">
                <table>
                    <tr>
                        <td class="Column1">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="Column1">
                            <asp:Label ID="lblLanguage" runat="server" Text="<% $Resources:Resource, lblLanguage %>"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtboxLanguage" runat="server" Width="30%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblCode" runat="server" Text="<% $Resources:Resource, lblCode %>"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtboxCode" runat="server" Width="20%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="height: 22px">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblWorkflowName" runat="server" Text="<% $Resources:Resource, lblWorkflowName %>"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtboxWFName" runat="server" Width="60%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblInactive" runat="server" Text="<% $Resources:Resource, lblInactive %>"></asp:Label>
                        </td>
                        <td>
                            <asp:CheckBox ID="chkboxInactive" runat="server" Checked="false" 
                                oncheckedchanged="chkboxInactive_CheckedChanged" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
