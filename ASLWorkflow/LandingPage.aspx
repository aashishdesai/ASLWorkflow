<%@ Page Title="" Language="C#" MasterPageFile="~/WorkflowMaster.Master" AutoEventWireup="true"
    CodeBehind="LandingPage.aspx.cs" Inherits="ASLWorkflow.LandingPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="bodyfontcolor">
        <table class="pageheader">
            <tr>
                <td >
              <%--  Text="<% $Resources:lblMyWorkflow %>"--%>
                    <asp:Label ID="lblWorkflowSummary" runat="server" Text="<% $Resources:Resource, lblWorkflowSummary %>"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <strong>
            <asp:Label ID="lblLanguage" runat="server" Text="<% $Resources:Resource, lblLanguage %>"></asp:Label></strong>:<asp:DropDownList
                ID="drpdownLanguages" runat="server" AutoPostBack="True" 
            onselectedindexchanged="drpdownLanguages_SelectedIndexChanged">
                 <asp:ListItem Value="en-US" Text="English" />
                 <asp:ListItem Value="fr-CA" Text="French" />
            </asp:DropDownList>
        <br />
        <br />
        <table class="table1" id="button">
            <tr>
                <td>
                    <asp:Label ID="lblMyWorkflow" runat="server" Text="<% $Resources:lblMyWorkflow %>"></asp:Label>
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <th class="columnright" id="headers">
                    <asp:Label ID="lblWorkflowStatus" runat="server" Text="<% $Resources:lblWorkflowStatus %>"></asp:Label>
                </th>
                <th class="columnleft" style="width: 3%">
                    &nbsp;
                </th>
                <th class="columnleft" id="headers">
                    <asp:Label ID="lblNumber" runat="server" Text="<% $Resources:lblNumber %>"></asp:Label>
                </th>
            </tr>
            <tr>
                <th class="columnright" id="headers">
                    &nbsp;
                </th>
                <th class="columnleft" style="width: 3%">
                    &nbsp;
                </th>
                <th class="columnleft" id="headers">
                    &nbsp;
                </th>
            </tr>
            <tr>
                <td class="columnright">
                    <asp:Label ID="lblInProgress" runat="server" Text="<% $Resources:lblInProgress %>"></asp:Label>
                </td>
                <td style="width: 3%">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="columnright">
                    <asp:Label ID="lblCompleted" runat="server" Text="<% $Resources:lblCompleted %>"></asp:Label>
                </td>
                <td class="columnspacing">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="columnright">
                    <asp:Label ID="lblCancelled" runat="server" Text="<% $Resources:lblCancelled %>"></asp:Label>
                </td>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="columnright">
                    <strong>
                        <asp:Label ID="lblTotal" runat="server" Text="<% $Resources:lblTotal %>"></asp:Label></strong>
                </td>
                <td class="columnspacing">
                    &nbsp;
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td class="columnright">
                    &nbsp;
                </td>
                <td class="columnspacing">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
        <table id="tablelandingpage">
            <tr>
                <td>
                    Go to:
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnMyInProgressTasks" class="lpbuttonverywide" runat="server" 
                        Text="<% $Resources:btnMyInProgressTasks %>" onclick="btnMyInProgressTasks_Click" />
                </td>
            </tr>
        </table>
        <div>
            <br />
            <div>
                <table class="table1" id="button">
                    <tr>
                        <td>
                            <asp:Label ID="lblAllTask" runat="server" Text="<% $Resources:lblAllTask %>"></asp:Label>
                        </td>
                    </tr>
                </table>
                <table class="tableLandingPage">
                    <th class="columnright" id="headers">
                        <asp:Label ID="lblTaskStatus" runat="server" Text="<% $Resources:lblTaskStatus %>"></asp:Label>
                    </th>
                    <th class="columnleft" style="width: 3%">
                    </th>
                    <th class="columnleft" id="headers">
                        <asp:Label ID="lblNum" runat="server" Text="<% $Resources:lblNum %>"></asp:Label>
                    </th>
                    </tr>
                    <tr>
                        <th class="columnright" id="headers">
                            &nbsp;
                        </th>
                        <th class="columnleft" style="width: 3%">
                            &nbsp;
                        </th>
                        <th class="columnleft" id="headers">
                            &nbsp;
                        </th>
                    </tr>
                    <tr>
                        <td class="columnright">
                            <asp:Label ID="lblProgress" runat="server" Text="<% $Resources:lblProgress %>"></asp:Label>
                        </td>
                        <td class="columnspacing">
                            &nbsp;
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td class="columnright">
                            <asp:Label ID="lblComplete" runat="server" Text="<% $Resources:lblComplete %>"></asp:Label>
                        </td>
                        <td class="columnspacing">
                            &nbsp;
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td class="columnright">
                            <asp:Label ID="lblCancel" runat="server" Text="<% $Resources:lblCancel %>"></asp:Label>
                        </td>
                        <td class="columnspacing">
                            &nbsp;
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td class="columnright">
                            <strong>
                                <asp:Label ID="lblTot" runat="server" Text="<% $Resources:lblTot %>"></asp:Label></strong>
                        </td>
                        <td class="columnspacing">
                            &nbsp;
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td class="columnright">
                            &nbsp;
                        </td>
                        <td class="columnspacing">
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </div>
            <table id="tablelandingpage">
                <tr>
                    <td class="columnleft">
                        <asp:Label ID="lblForOne" runat="server" Text="<% $Resources:lblForOne %>"></asp:Label>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        <asp:Label ID="lblForAll" runat="server" Text="<% $Resources:lblForAll %>"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnAdd" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnAdd %>" OnClick="btnAdd_Click" />
                        <asp:Button ID="btnSetUp" class="lpbutton" runat="server" Text="<% $Resources:btnSetUp %>" OnClick="btnSetUp_Click" />
                        <asp:Button ID="btnRun" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnRun %>" 
                            onclick="btnRun_Click" />
                        <asp:Button ID="btnSchedule" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnSchedule %>" 
                            onclick="Button1_Click" />
                    </td>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        <asp:Button ID="btnReview" class="lpbutton" runat="server" Text="<% $Resources:btnReview %>" 
                            onclick="btnReview_Click" />
                        <asp:Button ID="btnReport" class="lpbutton" runat="server" Text="<% $Resources:btnReport %>" 
                            onclick="btnReport_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnEdit" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnEdit %>" OnClick="btnEdit_Click2" />
                    </td>
                    <td class="lpcolumn">
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
            </table>
            <div>
                <br />
                <br />
                <br />
                <br />
            </div>
        </div>
        <br />
        <br />
    </div>
</asp:Content>
