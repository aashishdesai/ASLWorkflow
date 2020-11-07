<%@ Page Title="" Language="C#" MasterPageFile="~/WorkflowMaster.Master" AutoEventWireup="true"
    CodeBehind="EDITWorkflowTaskForm.aspx.cs" Inherits="ASLWorkflow.EDITWorkflowTaskForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <div id="initWF">
    <table class="pageheader">
        <tr>
            <td>
                <asp:Label ID="lblScheduleWorkflow" runat="server" Text="<% $Resources:lblScheduleWorkflow %>"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <div class="buttonalignment" >
        <asp:Button ID="btnSave" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnSave %>" />
        <asp:Button ID="btnCancel" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnCancel %>" />
        <asp:Button ID="btnBack" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnBack %>" 
            onclick="btnBack_Click1" />
        <asp:Button ID="btnReturn" class="lpbutton" runat="server" Text="<% $Resources:Resource, btnReturn %>" 
            onclick="btnReturn_Click1" />
    </div>
<br />
<br />
    
    <table>
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
    <table>
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
                <asp:Button ID="btnAdd" runat="server" Text="<%$ Resources:Resource, btnAdd %>"
 />
            </td>
        </tr>
        
    </table>
      <br />
    </div>
    <br />
    <div id="frame">
    <br />
    <table>
        <tr>
            <td colspan="3">
                <asp:Label ID="lblSelect" runat="server" 
                    Text="<% $Resources:lblSelect %>" style="font-weight: 700"></asp:Label>
            </td>
        </tr>
    </table>
     <div id="frame">
    <table>
        <tr>
            <td class="Column6">
                <asp:Label ID="lblCalender" runat="server" Text="<% $Resources:lblCalender %>" 
                    style="font-weight: 700"></asp:Label>
            </td>
            <td>
                <asp:CheckBox ID="checkBoxCalender" runat="server" />
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td class="Column6">
                <b>
                    <asp:Label ID="lblOnlyOneTime" runat="server" Text="<% $Resources:lblOnlyOneTime %>"></asp:Label></b>
            </td>
            <td>
                <asp:CheckBox ID="checkBoxOneTime" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblSpecificDate" runat="server" Text="<% $Resources:lblSpecificDate %>"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtBoxDate" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td class="Column6">
                <asp:Label ID="lblRepeatedYearly" runat="server" Text="<% $Resources:lblRepeatedYearly %>" 
                    style="font-weight: 700"></asp:Label>
            </td>
            <td>
                <asp:CheckBox ID="checkBoxYearly" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblSameSpecificDay" runat="server" Text="<% $Resources:lblSameSpecificDay %>"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtBoxSpecificDay" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td rowspan="3">
                <asp:Label ID="lblOrSameDay" runat="server" Text="<% $Resources:lblOrSameDay %>"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="dropDownOccurrence" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="lblSelectFirst" runat="server" Text="<% $Resources:lblSelectFirst %>"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="dropDownMonth" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="lblSelectJan" runat="server" Text="<% $Resources:lblSelectJan %>"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="dropDownDay" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="lblSelectMon" runat="server" Text="<% $Resources:lblSelectMon %>"></asp:Label>
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td class="Column6">
                <b>
                    <asp:Label ID="lblRepeatMonthly" runat="server" Text="<% $Resources:lblRepeatMonthly %>"></asp:Label></b>
            </td>
            <td>
                <asp:CheckBox ID="checkBoxMonthly" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblSameDayMonth" runat="server" Text="<% $Resources:lblSameDayMonth %>"></asp:Label>
                <br />
                <asp:Label ID="lblNote" runat="server" Text="<% $Resources:lblNote %>"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="dropDownMonthly" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="lblSelectOneTwo" runat="server" Text="<% $Resources:lblSelectOneTwo %>"></asp:Label>
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td class="Column6">
                <b>
                    <asp:Label ID="lblRepeatWeekly" runat="server" Text="<% $Resources:lblRepeatWeekly %>"></asp:Label></b>
            </td>
            <td>
                <asp:CheckBox ID="checkBoxWeekly" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblSameWeek" runat="server" Text="<% $Resources:lblSameWeek %>"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="dropDownSpecificDayWeek" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="lblSelectSun" runat="server" Text="<% $Resources:lblSelectSun %>"></asp:Label>
            </td>
        </tr>
    </table>
    
    <br />
    <br />
    <b>
        <asp:Label ID="lblOR" runat="server" Text="<% $Resources:lblOR %>"></asp:Label></b>
    <br />
    <br />
    <table>
        <tr>
            <td class="Column6">
                <b>
                    <asp:Label ID="lblHRDDate" runat="server" Text="<% $Resources:lblHRDDate %>"></asp:Label></b>
            </td>
            <td>
                <asp:CheckBox ID="checkBoxHRD" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblSelectHRD" runat="server" Text="<% $Resources:lblSelectHRD %>"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="dropDownHRD" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="lblSelectDate" runat="server" Text="<% $Resources:lblSelectDate %>"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblSelectDaysOff" runat="server" Text="<% $Resources:lblSelectDaysOff %>"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtBoxDaysOffset" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblSelectNegative" runat="server" Text="<% $Resources:lblSelectNegative %>"></asp:Label>
            </td>
        </tr>
    </table>
    </div>
    </div>
    </div>
    <br />
</asp:Content>
