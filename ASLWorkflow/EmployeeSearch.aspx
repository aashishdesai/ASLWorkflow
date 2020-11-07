<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeSearch.aspx.cs" Inherits="ASLWorkflow.EmployeeSearch" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/Master.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="popup">
    <table class="pageheader">
        <tr>
            <td>
                <asp:Label ID="lblRunManInitiateWF" runat="server" Text="Search Employee"></asp:Label>
            </td>
        </tr>
    </table>
    
    <asp:HiddenField ID="hiddenWFName" runat="server" />
    
    <asp:HiddenField ID="hiddenStepName" runat="server" />
    <asp:HiddenField ID="hiddenStepID" runat="server" />
    <table>
        <tr>
            <td colspan="3">
                <b>
                    <asp:Label ID="lblSelectSubject" runat="server" Text="Select Subject"></asp:Label>
                    
            </td>
        </tr>
        <tr>
            <td class="Column35">
                <asp:Label ID="lblSearchBy" runat="server" Text="Search By:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="dropDownSearch" runat="server" 
                    >
               <asp:ListItem Value="Last_Name" Text="Last Name" />
                <asp:ListItem Value="First_Name" Text="First Name" /> 
                  <asp:ListItem Value="Id" Text="Employee ID" />
                   <asp:ListItem Value="Position" Text="Position Profile" />
                    <asp:ListItem Value="Department" Text="Department" />
                     <asp:ListItem Value="" Text="Division" />
                      <asp:ListItem Value="Address_City_Town" Text="Location" />
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblFilterBy" runat="server" Text="Filter By:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtBoxFilterBy" runat="server"></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" onclick="btnSearch_Click" 
                    Text="Search" />
            </td>
        </tr>
        <tr>
            <td>
                    <asp:Label ID="lblSearchEmployee" runat="server" Text="Search Employee"></asp:Label>
            </td>
            <td>
                <asp:ListBox ID="ListBox1" runat="server" Width="80%" Height="100%"></asp:ListBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnAdd" class="lpbutton" runat="server" Text="Add" 
                    onclick="btnAdd_Click" />
            </td>
        </tr>
        
    </table>
      
    </div>
    </div>
    
    <br />
    </form>
</body>
</html>
