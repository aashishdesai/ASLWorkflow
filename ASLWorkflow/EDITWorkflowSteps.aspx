<%@ Page Title="" Language="C#" MasterPageFile="~/WorkflowMaster.Master" AutoEventWireup="true"
    CodeBehind="EDITWorkflowSteps.aspx.cs" Inherits="ASLWorkflow.EDITWorkflowSteps" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="bodyfontcolor">
        <table class="pageheader">
            <tr>
                <td>
                    <asp:Label ID="lblEditWorkflowSteps" runat="server" Text="<% $Resources:lblEditWorkflowSteps %>"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <div class="buttonalignment">
            <asp:Button ID="btnAdd" class="lpbutton" runat="server" 
                Text="<% $Resources:Resource, btnAdd %>" onclick="btnAdd_Click" />
                 <asp:Button ID="btnSave" class="lpbutton" runat="server" 
                Text="Save" onclick="btnSave_Click" />
            
     <asp:Button ID="btnCancel" class="lpbutton" runat="server" Text="Cancel"
                />
         
            <asp:Button ID="btnBack" class="lpbutton" runat="server" 
                Text="<% $Resources:Resource, btnBack %>" onclick="btnBack_Click1"
                />
            <asp:Button ID="btnReturn" class="lpbutton" runat="server" 
                Text="<% $Resources:Resource, btnReturn %>" onclick="btnReturn_Click1"
               />
        </div>
        <br />
        <br />
        <div id="editWFSteps">
            <div id="bolds">
                <table>
                    <tr>
                        <td class="Column10">
                            &nbsp;
                        </td>
                        <td class="subjecttextbox" style="width: 40%">
                            &nbsp;
                        </td>
                        <td rowspan="5" style="width: 7%" align="center">
                            &nbsp;
                        </td>
                        <td rowspan="5" class="subjecttextbox" style="width: 40%">
                            <asp:Label ID="lbltxt" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="Column10">
                            <asp:Label ID="lblName" runat="server" Text="<% $Resources:Resource, lblName %>"></asp:Label>
                        </td>
                        <td class="subjecttextbox" style="width: 40%">
                            <asp:TextBox ID="txtboxName" runat="server" OnTextChanged="txtboxName_TextChanged"
                                Width="315px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td class="subjecttextbox" style="width: 40%">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblModule" runat="server" Text="<% $Resources:lblModule %>"></asp:Label>
                        </td>
                        <td class="subjecttextbox" style="width: 40%">
                            <asp:DropDownList ID="DropDownModule" runat="server" AutoPostBack="true" AppendDataBoundItems="true"
                                DataTextField="Str" OnSelectedIndexChanged="DropDownModule_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblCategory" runat="server" Text="<% $Resources:lblCategory %>"></asp:Label>
                        </td>
                        <td class="subjecttextbox" style="width: 40%">
                            <asp:DropDownList ID="DropDownCategory" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td id="orangeheaders">
                            <asp:Label ID="lblArea" runat="server" Text="<% $Resources:lblArea %>"></asp:Label>
                        </td>
                        <td class="columnleft" rowspan="13" style="width: 40%">
                            <div style="height:270px; width:99%;overflow: auto;">
                                <asp:GridView ID="GridViewArea" runat="server" Font-Size="13px" 
                                    style="height:271px; overflow:auto" Width="100%" GridLines="None"  
                                    ShowHeader="False" AutoGenerateColumns="False" 
                                    onselectedindexchanged="GridViewArea_SelectedIndexChanged">
                                    <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:CheckBox ID="CheckBox1" runat="server" />
                                               
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:ButtonField ButtonType="Image" ImageUrl="~/Images/table.gif" Text="hi">
                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                            <ItemStyle Width="20%"></ItemStyle>
                                        </asp:ButtonField>
                                        <asp:BoundField DataField="Str" HeaderText="">
                                            <ItemStyle Width="80%"></ItemStyle>
                                        </asp:BoundField>
                                         <asp:BoundField DataField="Id">
                                            
                                        </asp:BoundField>
                                    </Columns>
                                    <SelectedRowStyle ForeColor="#000080" Font-Bold="True" BackColor="#000099"></SelectedRowStyle>
                                    <RowStyle BackColor="White" ForeColor="#000080" HorizontalAlign="Left" Wrap="True" CssClass="grid_txt" />
                                </asp:GridView>
                            </div>
                        </td>
                        <td id="orangeheaders" style="width: 60px" align="center">
                            <asp:Label ID="lblSteps" runat="server" Text="<% $Resources:lblSteps %>"></asp:Label>
                        </td>
                        <td class="columnleft" rowspan="14" style="width: 40%">
                        <div style="height:270px; width:99%;overflow: auto;">
                            <asp:GridView ID="GridViewSteps" runat="server" Font-Size="13px" 
                                GridLines="None" ShowHeader="False" 
                                AutoGenerateColumns="False" Height="271px" Width="100%" 
                                onrowcommand="GridViewSteps_RowCommand" CanReorderItems="True"
            AllowDrop="True"
            CanDragItems="True"
                                >
                                <Columns>
                                <asp:ButtonField ButtonType="Image" ImageUrl="~/Images/table.gif" Text="form">
                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                            <ItemStyle Width="10%"></ItemStyle>
                                        </asp:ButtonField>
                                     
                                    <asp:BoundField DataField="Str">
                                        <ItemStyle Width="80%"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField  DataField="Id"  />
                                    <asp:ButtonField ButtonType="Image" ImageUrl="~/Images/delete2.gif" 
                                        CommandName="delete_click" Text="delete" HeaderText="">
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        <ItemStyle Width="10%"></ItemStyle>
                                        </asp:ButtonField>
                                    <asp:ButtonField ButtonType="Image" ImageUrl="~/Images/package.gif" 
                                       CommandName="package_click" Text="package" >
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        <ItemStyle Width="10%"></ItemStyle>
                                        </asp:ButtonField>
                                </Columns>
                               
                            </asp:GridView>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td id="orangeheaders">
                            &nbsp;
                        </td>
                        <td style="width: 60px">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td id="orangeheaders">
                            &nbsp;
                        </td>
                        <td style="width: 60px">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td id="orangeheaders">
                            &nbsp;
                        </td>
                        <td style="width: 60px">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td id="orangeheaders">
                            &nbsp;
                        </td>
                        <td align="center">
                            <%--<asp:ImageButton ID="btn_moveall"   runat="server" 
                    ImageUrl="~/Images/insertallbutton.gif" onclick="btn_moveall_Click1"
                        />--%>
                            
                        <asp:Button ID="btnMove" runat="server" Text=">>"
    onclick="Button1_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td id="orangeheaders">
                            &nbsp;
                        </td>
                        <td style="width: 60px" align="center">
                            <%--<asp:ImageButton ID="btn_moveselected"  runat="server" 
                    ImageUrl="~/Images/insertbutton.gif" onclick="btn_moveselected_Click1"
                       />--%>
                        </td>
                    </tr>
                    <tr>
                        <td id="orangeheaders">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td id="orangeheaders">
                            &nbsp;
                        </td>
                        <td align="center">
                             &nbsp;</td>
                    </tr>
                    <tr>
                        <td id="orangeheaders">
                            &nbsp;
                        </td>
                        <td style="width: 60px" align="center">
                            <%--<asp:ImageButton ID="btn_movebackall"  runat="server" 
                    ImageUrl="~/Images/removeallbutton.gif" onclick="btn_movebackall_Click1"
                         />--%>
                        </td>
                    </tr>
                    <tr>
                        <td id="orangeheaders">
                            &nbsp;
                        </td>
                        <td style="width: 60px">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td id="orangeheaders">
                            &nbsp;
                        </td>
                        <td style="width: 60px">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td id="orangeheaders">
                            &nbsp;
                        </td>
                        <td style="width: 60px">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td id="orangeheaders">
                            &nbsp;
                        </td>
                        <td style="width: 10%">
                            &nbsp;
                        </td>
                    </tr>
                </table>
                <br />
                <br />
            </div>
        </div>
    </div>
</asp:Content>
