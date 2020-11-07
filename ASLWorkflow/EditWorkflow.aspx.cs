using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataLayer;
using BusinessLayer;
using System.Data;
using System.Linq.Expressions;
using System.Reflection;
using System.Text.RegularExpressions;


namespace ASLWorkflow
{
    public partial class EditWorkflow : LanguageChange
    {
        string wfname;

        LanguageChange check = new LanguageChange();

       
 
        protected void Page_Load(object sender, EventArgs e)
        {

            string language = Session["mylang"].ToString();
            check.LanguageCheck(language);

            base.InitializeCulture();


            btnAdd.Enabled = false;
            btnEdit.Enabled = false;
            //btnReturn.Enabled = false;
            ////accessing workflow name
            wfname = Request.QueryString["WfName"];
            //txtboxWFName.Text = wfname;
            //txtboxWFName.Text = Session["WfName"].ToString();
           // txtboxWFName.Text = Request.Cookies["WfName"].Value;

            if (!IsPostBack)
            {
               
                txtboxWFName.Text = wfname;
                WorkflowsService workflowsService = new WorkflowsService();
                EditWorkflowsDTO editworkflowsDto = workflowsService.EditWorkflow(wfname);
                txtboxLanguage.Text = editworkflowsDto.Language;
                txtboxCode.Text = editworkflowsDto.Code;
                CheckBoxInactive.Checked = editworkflowsDto.Inactive;
            }
            else
            {
                
            }

           // //accessing language
           // lang= Session["myLang"].ToString();
           // txtboxLanguage.Text = lang;
            
           //// accessing code from database
            

            //EditWorkflowsDTO editworkflowsDto = new EditWorkflowsDTO();
           
           
           


        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("EDITSelectWorkflow.aspx");
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("LandingPage.aspx");
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("EDITSelectWorkflow.aspx");
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
          
            WorkflowsDTO workflowsDTO = new WorkflowsDTO(txtboxLanguage.Text.Trim(), txtboxCode.Text.Trim(), txtboxWFName.Text.Trim(),
              CheckBoxInactive.Checked);
            WorkflowsService workflowsService = new WorkflowsService();
            bool workflowExists = false;
            try
            {
                workflowsService.UpdateWorkflow(workflowsDTO);
            }
            catch (DuplicateNameException ex)
            {
                workflowExists = true;

            }

            if (workflowExists)
            {
                lblResult.Text = "Workflow name already exists. Try using a different name";
                btnAdd.Enabled = true;
                txtboxWFName.Focus();
            }
            else
            {
                lblResult.Text = "Your Workflow is being Saved";
                btnAdd.Enabled = true;
                txtboxCode.Text = "";
                txtboxWFName.Text = "";
            }
           
        }

        protected void btnReturn_Click1(object sender, EventArgs e)
        {
            Response.Redirect("LandingPage.aspx");
        }
    }
}