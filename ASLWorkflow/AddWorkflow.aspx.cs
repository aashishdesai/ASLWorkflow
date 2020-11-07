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
    public partial class WebForm1 : LanguageChange
    {
        string  text_language;

        LanguageChange check = new LanguageChange();

      
        protected void Page_Load(object sender, EventArgs e)
        {

            string language = Session["mylang"].ToString();
            check.LanguageCheck(language);

            base.InitializeCulture();


            btnAdd.Enabled = false;
            btnEdit.Enabled = false;
            btnReturn.Enabled = false;
            txtboxLanguage.Enabled = false;
            
          string currrent_lang = Session["myLang"].ToString();

            if(currrent_lang=="en-US"){

                text_language = "English";
            }

            else if (currrent_lang=="fr-CA")
            {

                text_language = "French";
            }

            txtboxLanguage.Text = text_language;
        //  txtboxLanguage.Visible = false;

        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("LandingPage.aspx");
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("LandingPage.aspx");
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {


        }

        protected void btnSave_Click1(object sender, EventArgs e)
        {
           
        }

        protected void chkboxInactive_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click2(object sender, EventArgs e)
        {
            WorkflowsDTO workflowsDTO = new WorkflowsDTO(txtboxLanguage.Text.Trim(), txtboxCode.Text.Trim(), txtboxWFName.Text.Trim(),
               chkboxInactive.Checked);
            WorkflowsService workflowsService = new WorkflowsService();
            bool workflowExists= false;
            try
            {
                workflowsService.SaveWorkflow(workflowsDTO);
            }catch(DuplicateNameException ex){
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

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("LandingPage.aspx");
        }

        protected void txtboxLanguage_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {

        }
    }
}