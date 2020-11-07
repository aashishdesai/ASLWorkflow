<%@ Page Title="" Language="C#" MasterPageFile="~/WorkflowMaster.Master" AutoEventWireup="true"
    CodeBehind="EDITWorkflowTaskForm.aspx.cs" Inherits="ASLWorkflow.EDITWorkflowTaskForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="bodyfontcolor">
    <table  class="pageheader">
        <tr>
            <td>
                <asp:Label ID="lblEditTaskForm" runat="server" Text="<% $Resources:lblEditTaskForm %>"></asp:Label></td>
        </tr>
    </table>
    
    <br />
    <div class="buttonalignment" >
        <asp:Button ID="btnSave" class="lpbutton" runat="server" 
            Text="<% $Resources:Resource, btnSave %>" onclick="btnSave_Click1" />
        <asp:Button ID="btnCancel" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnCancel %>" />
        <asp:Button ID="btnBack" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnBack %>" 
            onclick="btnBack_Click" />
        <asp:Button ID="btnReturn" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnReturn %>" 
            onclick="btnReturn_Click" />
    </div>
    
    <asp:HiddenField ID="hiddenWFName" runat="server" />
    
    <asp:HiddenField ID="hiddenStepName" runat="server" />
    <asp:HiddenField ID="hiddenStepID" runat="server" />
    <br />
    <asp:HiddenField ID="HiddenTO" runat="server" />
    <asp:HiddenField ID="HiddenCC" runat="server" />
    <asp:HiddenField ID="HiddenBCC" runat="server" />
    <asp:HiddenField ID="HiddenEscTO" runat="server" />
    <asp:Label ID="lblMsg" class="columnright" runat="server"></asp:Label>
    <br />
    <script language="javascript" type="text/javascript">
        function showWindow(URL, workflowname, stepname, stepID, targetId,empId) {
            noweOkno = window.open(URL + '?wfname=' + workflowname + '&stepId=' + stepID + '&stepname=' + stepname + '&targetId=' + targetId + '&empId=' + empId, '_blank',
         'menubar=no, toolbar=no, location=no, scrollbars=no, resizable=no, ' +
         'status=no, width=460, height=300, left=30, top=30')
            noweOkno.focus();
        }
</script>   
    <table id="headers">
        <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblLanguage" runat="server" Text="<% $Resources:Resource, lblLanguage %>"></asp:Label> </td>
            <td colspan="3">
                <asp:TextBox ID="txtboxLanguage" runat="server" Enabled="False" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="height: 6px">
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblTaskFormStatus" runat="server" Text="<% $Resources:lblTaskFormStatus %>"></asp:Label>
            </td>
            <td colspan="3">
                <asp:TextBox ID="txtboxStatus" runat="server" Style="margin-left: 0px" 
                    Enabled="False" Width="140px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="height: 7px">
                </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblWorkflowCode" runat="server" Text="<% $Resources:lblWorkflowCode %>"></asp:Label></td>
            <td >
                <asp:TextBox ID="txtboxWFCode" runat="server" Enabled="False" Width="100px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblCreated" runat="server" Text="<% $Resources:lblCreated %>"></asp:Label></td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="txtboxCreated" runat="server" 
                    Enabled="False" Width="140px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblWorkflowName" runat="server" Text="<% $Resources:Resource, lblWorkflowName %>"></asp:Label></td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="txtboxWFName" runat="server" Enabled="False" Width="250px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblCreatedBy" runat="server" Text="<% $Resources:lblCreatedBy %>"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtboxCreatedBy" runat="server" Enabled="False" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="height: 7px">
                </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblStepNumber" runat="server" Text="<% $Resources:lblStepNumber %>"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtboxStepNo" runat="server" Enabled="False" Width="100px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblLastUpdated" runat="server" Text="<% $Resources:lblLastUpdated %>"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtboxLastUpdated" runat="server"  
                    Enabled="False" Width="140px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblStepName" runat="server" Text="<% $Resources:lblStepName %>"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtboxStepName" runat="server" Enabled="False" Width="250px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblUpdated" runat="server" Text="<% $Resources:lblUpdated %>"></asp:Label> </td>
            <td>
                <asp:TextBox ID="txtboxUpdatedBy" runat="server" Enabled="False" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="height: 7px">
                </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblTaskNumber" runat="server" Text="<% $Resources:lblTaskNumber %>"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtboxTaskNo" runat="server" Enabled="False" Width="100px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblCreated0" runat="server" Text="<% $Resources:lblCreated %>"></asp:Label> </td>
            <td>
                <asp:TextBox ID="txtboxCreatedOn" runat="server" Enabled="False" Width="140px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="height: 7px">
                </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblSubEmpId" runat="server" Text="Subject Emp ID"></asp:Label>
            </td>
            <td colspan="3">
                <asp:TextBox ID="txtboxSubEmpID" runat="server" Enabled="False" Width="100px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="Column7">
                <asp:Label ID="lblSubEmpName" runat="server" Text="Subject Emp Name:"></asp:Label>
            </td>
            <td colspan="3">
                <asp:TextBox ID="txtboxSubEmpName" runat="server" Enabled="False" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <table>
        <tr>
            <td colspan="2" class="Column4" id="headers">
                <asp:Label ID="lblMessage" runat="server" Text="<% $Resources:Resource, lblMessage %>"></asp:Label> 
            </td>
        </tr>
        <tr>
            <td class="Column4">
                <asp:Label ID="lblForm" runat="server" Text="<% $Resources:Resource, lblForm %>"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtboxFrom" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="Column4">
                <asp:Label ID="lblTo" runat="server" Text="<% $Resources:Resource, lblTo %>"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtboxTo" runat="server"></asp:TextBox>
                <asp:Button ID="btnEmployeeSearch1" class="lpbuttonwide" runat="server" 
                    Text="<% $Resources:btnEmployeeSearch %>" 
                    onclick="btnEmployeeSearch_Click" />
            &nbsp;<asp:Button ID="btnSubEmp" class="lpbuttonwide" runat="server" 
                    Text="Subject Employee" onclick="btnSubEmp_Click"/></td>
        </tr>
        <tr>
            <td class="Column4">
                <asp:Label ID="lblCC" runat="server" Text="<% $Resources:Resource, lblCC %>"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtboxCc" runat="server"></asp:TextBox>
                <asp:Button ID="btnEmployeeSearch2" class="lpbuttonwide" runat="server" 
                    Text="<% $Resources:btnEmployeeSearch %>" 
                    onclick="btnEmployeeSearch_Click" />
            </td>
        </tr>
        <tr>
            <td class="Column4">
                <asp:Label ID="lblBcc" runat="server" Text="<% $Resources:Resource, lblBcc %>"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtboxBcc" runat="server"></asp:TextBox>
                <asp:Button ID="btnEmployeeSearch3" class="lpbuttonwide" runat="server" 
                    Text="<% $Resources:btnEmployeeSearch %>" 
                    onclick="btnEmployeeSearch_Click" />
            </td>
        </tr>
        <tr>
            <td class="Column4">
                <asp:Label ID="lblSubject" runat="server" Text="<% $Resources:Resource, lblSubject %>"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtboxSubject" runat="server" Enabled="False" Width="50%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="Column4">
                <asp:Label ID="lblMessageBox" runat="server" Text="<% $Resources:Resource, lblMessageBox %>"></asp:Label> </td>
            <td rowspan="6">
                <asp:TextBox ID="txtboxMessage" runat="server" Rows="7" TextMode="MultiLine" Width="98%"
                    Height="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="Column4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="Column4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="Column4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="Column4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="Column4">
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <table>
        <tr>
            <td class="Column4" id="headers">
                <asp:Label ID="lblChecklist" runat="server" Text="<% $Resources:Resource, lblChecklist %>"></asp:Label>
            </td>
            <td class="fontcolor">
                <asp:Label ID="lblClickChecklist" runat="server" Text="<% $Resources:lblClickChecklist %>"></asp:Label> <br />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                <asp:Button ID="btnCheckList" class="lpbutton" runat="server" 
                    Text="<% $Resources:btnCheckList %>" onclick="btnCheckList_Click" />
            </td>
        </tr>
    </table>
    <br />
    <table>
        <tr>
            <td>
                &nbsp;
            </td>
            <td colspan="4" class="fontcolor">
                <asp:Label ID="lblIfEscalateTo" runat="server" Text="<% $Resources:lblIfEscalateTo %>"></asp:Label> <br />
            </td>
        </tr>
        <tr>
            <td class="Column4" id="headers">
                <asp:Label ID="lblEscalateTo" runat="server" Text="<% $Resources:lblEscalateTo %>"></asp:Label>
            </td>
            <td class="Column7">
                <asp:TextBox ID="txtboxEscalateTO" runat="server"></asp:TextBox>
            </td>
            <td class="Column7">
                <asp:Button ID="btnEmployeeSearch" class="lpbuttonwide" runat="server" 
                    Text="<% $Resources:btnEmployeeSearch %>" onclick="btnEmployeeSearch_Click" />
            </td>
            <td class="Column4" id="headers">
                <asp:Label ID="lblEscalateAfter" runat="server" Text="<% $Resources:lblEscalateAfter %>"></asp:Label> 
            </td>
            <td style="margin-left: 80px">
                <asp:TextBox ID="txtboxEscalateAfter" runat="server" TextMode="Number" 
                    Width="32px"></asp:TextBox>
                <asp:Label ID="lblHours" runat="server" Text="<% $Resources:lblHours %>"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3">
            </td>
            <td class="Column4" id="headers">
                <asp:Label ID="lblTimeStamp" runat="server" Text="<% $Resources:lblTimeStamp %>"></asp:Label> 
            </td>
            <td>
                <asp:TextBox ID="txtboxTimeStamp" runat="server" TextMode="DateTimeLocal" 
                    Enabled="False"></asp:TextBox>
            </td>
        </tr>
    </table>
    <br />
    <table>
        <tr>
            <td>
                &nbsp;
            </td>
            <td colspan="4" class="fontcolor">
                <asp:Label ID="lblBeforeYouClicked" runat="server" Text="<% $Resources:lblBeforeYouClicked %>"></asp:Label> <br />
            </td>
        </tr>
        <tr>
            <td class="Column4" id="headers">
                <asp:Label ID="lblSignOff" runat="server" Text="<% $Resources:Resource, lblSignOff %>"></asp:Label>
            </td>
            <td >
                <asp:Button ID="btnCompleted" class="lpbutton" runat="server" Text="<% $Resources:btnCompleted %>" />
            </td>
            <td class="Column8">
                <asp:TextBox ID="txtboxCompleted" class="txtbox190" runat="server" 
                    Enabled="False" ></asp:TextBox>
            </td>
            <td class="Column4" id="headers">
                <asp:Label ID="lblTime" runat="server" Text="TimeStamp"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtboxTimeStampSign" runat="server" TextMode="DateTimeLocal" 
                    Enabled="False"></asp:TextBox>
            </td>
        </tr>
    </table>
    <br />
    <table>
        <tr>
            <td>
                &nbsp;
            </td>
            <td colspan="4" class="fontcolor">
                <asp:Label ID="lblBeforeCancel" runat="server" Text="<% $Resources:lblBeforeCancel %>"> </asp:Label>
                <strong>
                    <asp:Label ID="lblYou" runat="server" Text="<% $Resources:lblYou %>"></asp:Label>&nbsp;</strong><asp:Label
                        ID="lblWillChange" runat="server" Text="<% $Resources:lblWillChange %>"></asp:Label>
                <asp:Label ID="lblStatusCancelled" runat="server" Text="<% $Resources:lblStatusCancelled %>"></asp:Label>
                <asp:Label ID="lblDateTime" runat="server" Text="<% $Resources:lblDateTime %>"></asp:Label><br />
            </td>
        </tr>
        <tr>
            <td class="Column4" id="headers">
                <asp:Label ID="lblAdministrator" runat="server" Text="<% $Resources:lblAdministrator %>"></asp:Label>
            </td>
            <td style="margin-left: 80px">
                <asp:Button ID="btnAdminCancel" class="lpbutton" runat="server" Text="<% $Resources:btnAdminCancel %>" />
            </td>
            <td class="Column8">
                <asp:TextBox ID="txtboxAdmin" class="txtbox190" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td class="Column4" id="headers">
                <asp:Label ID="lblTimestamp1" runat="server" Text="<% $Resources:lblTimeStamp1 %>"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtboxAdminTimeStamp" runat="server" TextMode="DateTimeLocal" 
                    Enabled="False"></asp:TextBox>
            </td>
        </tr>
    </table>
    <br />
  

    <table id="headers">
        <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:Label ID="lblNxtWFTask" runat="server" Text="Next Workflow Task:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="Column4">
                <asp:Label ID="lblWFCode" runat="server" Text="Workflow Code:"></asp:Label>
            </td>
            <td class="Column4">
                <asp:TextBox ID="txtbxWFCode" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td class="Column4">
                <asp:Label ID="lblWFName" runat="server" Text="Workflow Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtbxWFName" runat="server" Enabled="False"></asp:TextBox>
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
                <asp:Label ID="lblStpNo" runat="server" Text="Step Number:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtbxStpNo" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblStpName" runat="server" Text="Step Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtbxStpName" runat="server" Enabled="False"></asp:TextBox>
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
                <asp:Label ID="lblTaskNo" runat="server" Text="Task Number:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtbxTaskNo" runat="server" Enabled="False"></asp:TextBox>
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
    </table>

    </div>
    <br />
</asp:Content>
