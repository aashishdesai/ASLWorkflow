using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using DataLayer;
using BusinessLayer;

namespace ASLWorkflow
{
    public partial class EDITWorkflowTaskForm : LanguageChange
    {
        LanguageChange check = new LanguageChange();
        String stepname, workflowname, stepID,empName;

        protected void Page_Load(object sender, EventArgs e)
        {

            string language = Session["mylang"].ToString();
            workflowname = Request.QueryString["wfname"];
            //hiddenWFName.Value = workflowname;
            stepname = Request.QueryString["stepname"];
            //hiddenStepName.Value = stepname;
            stepID = Request.QueryString["stepId"];
            //hiddenStepID.Value = stepID;

            if (!IsPostBack)
            {

                stepID = Request.QueryString["stepId"];
                hiddenStepID.Value = stepID;


                check.LanguageCheck(language);

                base.InitializeCulture();
                WorkflowsService workflowsService = new WorkflowsService();

                LoadTaskformDTO dto = workflowsService.LoadTaskForm(workflowname, stepID);



                txtboxLanguage.Text = dto.language;
                txtboxWFCode.Text = dto.workflowCode;
                txtboxWFName.Text = dto.workflowName;
                txtboxStepNo.Text = dto.stepNo.ToString();
                txtboxStepName.Text = stepname;


                if (Request.QueryString["workflowFormId"] != null)
                {

                    txtboxTo.Text = Request.QueryString["empName"];
                    String workFlowId = Request.QueryString["workflowFormId"];
                    LoadTaskformDTO loadTaskFormDtos = workflowsService.LoadWFTaskformtoEdit(workFlowId);

                    txtboxLanguage.Text = loadTaskFormDtos.language;
                    txtboxStatus.Text = "";

                    txtboxStepName.Text = stepname;
                    txtboxCreated.Text = loadTaskFormDtos.created;
                    txtboxLastUpdated.Text = loadTaskFormDtos.updated;
                    txtboxFrom.Text = loadTaskFormDtos.fromEmp;

                    txtboxCc.Text = loadTaskFormDtos.cc;
                    txtboxBcc.Text = loadTaskFormDtos.bcc;
                    txtboxSubEmpName.Text = loadTaskFormDtos.subEmpName;
                    txtboxMessage.Text = loadTaskFormDtos.msgBox;
                    txtboxEscalateTO.Text = loadTaskFormDtos.escToName;
                    txtboxEscalateAfter.Text = loadTaskFormDtos.escalateAfter;
                    txtboxCompleted.Text = loadTaskFormDtos.signOff;
                    HiddenTO.Value = loadTaskFormDtos.Employee_To_Id;
                    HiddenCC.Value = loadTaskFormDtos.Employee_CC_Id;
                    HiddenBCC.Value = loadTaskFormDtos.Employee_BCC_Id;
                    HiddenEscTO.Value = loadTaskFormDtos.Escalate_To_Id;



                }


            }
            btnEmployeeSearch1.Attributes["onclick"] =
                string.Format("showWindow( 'EmployeeSearch.aspx', '{0}', '{1}','{2}','{3}','{4}' );",
                     workflowname, stepname, stepID,txtboxTo.ClientID,HiddenTO.ClientID);
            btnEmployeeSearch2.Attributes["onclick"] =
                string.Format("showWindow( 'EmployeeSearch.aspx', '{0}', '{1}','{2}','{3}','{4}' );",
                     workflowname, stepname, stepID, txtboxCc.ClientID, HiddenCC.ClientID);
            btnEmployeeSearch3.Attributes["onclick"] =
                string.Format("showWindow( 'EmployeeSearch.aspx', '{0}', '{1}','{2}','{3}','{4}' );",
                     workflowname, stepname, stepID, txtboxBcc.ClientID, HiddenBCC.ClientID);
            btnEmployeeSearch.Attributes["onclick"] =
                string.Format("showWindow( 'EmployeeSearch.aspx', '{0}', '{1}','{2}','{3}','{4}' );",
                     workflowname, stepname, stepID, txtboxEscalateTO.ClientID, HiddenEscTO.ClientID);
      

           


        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("EDITWorkflowTask.aspx?wfname=" + stepname + "&workflowname=" + workflowname + "&stepId=" + stepID);
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("LandingPage.aspx");
        }

      
        protected void btnEmployeeSearch_Click(object sender, EventArgs e)
        {
            // Response.Redirect("EmployeeSearch.aspx?wfname=" + workflowname + "&stepId=" + stepID + "&stepname=" + stepname);
            //Response.Redirect("EmployeeSearch.aspx");
        }



        protected void btnSave_Click1(object sender, EventArgs e)
        {

            WorkflowsService workflowsService = new WorkflowsService();
            if (Request.QueryString["workflowFormId"] == null)
            {
                WorkflowTaskFormsDTO workflowTaskFormsDto = new WorkflowTaskFormsDTO(txtboxSubEmpID.Text.Trim(),
                    txtboxSubEmpName.Text.Trim(), txtboxFrom.Text.Trim(), HiddenTO.Value.ToString(), HiddenCC.Value.Trim(), HiddenBCC.Value.Trim(),
                    txtboxSubject.Text.Trim(), txtboxMessage.Text.Trim(), HiddenEscTO.Value.Trim(), txtboxEscalateAfter.Text,
                    txtboxCompleted.Text.Trim(), txtboxAdmin.Text.Trim(),
                    stepID, txtboxWFName.Text.Trim());

                workflowsService.SaveTaskForm(workflowTaskFormsDto);
                lblMessage.Text = "Your Form is being Saved!";

            }
            else
            {
                string wfFormId = Request.QueryString["workflowFormId"];
                WorkflowTaskFormsDTO workflowTaskFormsDto_Update = new WorkflowTaskFormsDTO(HiddenTO.Value.ToString(), HiddenCC.Value.Trim(), HiddenBCC.Value.Trim(),
                    txtboxSubject.Text.Trim(), txtboxMessage.Text.Trim(), HiddenEscTO.Value.Trim(), txtboxEscalateAfter.Text, wfFormId);

                workflowsService.UpdateTaskForm(workflowTaskFormsDto_Update);
            }




        }

        protected void btnSubEmp_Click(object sender, EventArgs e)
        {
           

            txtboxSubject.Text = txtboxStepName.Text +";"+txtboxTo.Text;
        }

        protected void btnCheckList_Click(object sender, EventArgs e)
        {
            //stepID = Request.QueryString["stepId"];
            //hiddenStepID.Value = stepID;
            Response.Redirect("EDITWorkflowTaskChecklist.aspx?wfname=" + workflowname + "&stepId=" + stepID + "&stepname=" + stepname);
        }

    }
}