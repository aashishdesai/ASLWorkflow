using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using BusinessLayer;
using DataLayer;

namespace ASLWorkflow
{
    public partial class EDITWorkflowTask : LanguageChange
    {
        DataTable dt;
        LanguageChange check = new LanguageChange();
        String stepname, workflowname,stepId;
       


        protected void Page_Load(object sender, EventArgs e)
        {
            string language = Session["mylang"].ToString();
            check.LanguageCheck(language);

            base.InitializeCulture();
            if (Request.QueryString["workflowname"] != null)
            {
            workflowname = Request.QueryString["workflowname"];
            txtboxWorkflow.Text = workflowname;
            }
            if (Request.QueryString["wfname"] != null)
            {
                stepname = Request.QueryString["wfname"];
                txtboxStepName.Text = stepname;
            }
            if (Request.QueryString["stepId"] != null)
            {
                stepId = Request.QueryString["stepId"];
                //lbl.Text = stepId;
            }


            if (Request.QueryString["wfname1"] != null)
            {
                workflowname = Request.QueryString["wfname1"];
                txtboxWorkflow.Text = workflowname;
            }
            if (Request.QueryString["stepname"] != null)
            {
                stepname = Request.QueryString["stepname"];
                txtboxStepName.Text = stepname;
            }
            
            // if (Request.QueryString["stepid1"] != null)
            //{
            //    stepId = Request.QueryString["stepid1"];
            //    lbl.Text = stepId;
            //}

             WorkflowsService wfservice = new WorkflowsService();
             List<LoadWorkflowTaskDTO> loadWFTaskDtos = wfservice.LoadTask(stepId,workflowname);

             if (loadWFTaskDtos.Count > 0)
             {
                 DataTable dtsteps = new DataTable();
                 dtsteps.Columns.Add("Name", typeof(string));
                 dtsteps.Columns.Add("Id", typeof(string));

                 foreach (LoadWorkflowTaskDTO wfs in loadWFTaskDtos)
                 {

                     DataRow row = dtsteps.NewRow();
                     row["Id"] = wfs.wftask_Id;
                     row["Name"] = wfs.emp_Name;
                     dtsteps.Rows.Add(row);
                 }

                 GridViewWFStepsNames.DataSource = dtsteps;

                 GridViewWFStepsNames.DataBind();
                 GridViewWFStepsNames.Columns[1].Visible = false;

                 ViewState["dtTable"] = dtsteps;
             }
             


           
           
        }
        protected void grdListings_DataBound(Object sender, EventArgs e)
        {
            GridViewRow gvrPager = GridViewWFStepsNames.BottomPagerRow;
            //int pagesize1 = GridViewSelectWorkflow.Rows; 
            int totalRows = GridViewWFStepsNames.Rows.Count;
            int currentPage = GridViewWFStepsNames.PageIndex;
            int pageSize = GridViewWFStepsNames.PageSize;
            int gridPageStart = currentPage * pageSize + 1;
            int gridPageEnd = currentPage * pageSize + totalRows;



            if (gvrPager == null) return;

            // get your controls from the gridview
            // DropDownList ddlPages = (DropDownList)gvrPager.Cells[0].FindControl("ddlPages");
            Label lblPageNo = (Label)gvrPager.Cells[0].FindControl("lblPageNo");
            Label lblPageNoTo = (Label)gvrPager.Cells[0].FindControl("lblPageNoTo");
            Label lblPageCount = (Label)gvrPager.Cells[0].FindControl("lblPageCount");


            // populate page count
            if (lblPageCount != null)

                lblPageNo.Text = gridPageStart.ToString();

            lblPageNoTo.Text = gridPageEnd.ToString();

            //lblPageCount.Text = dt.Rows.Count.ToString();

        }
        protected void ddlPages_SelectedIndexChanged(Object sender, EventArgs e)
        {
            GridViewRow gvrPager = GridViewWFStepsNames.BottomPagerRow;
            DropDownList ddlPages = (DropDownList)gvrPager.Cells[0].FindControl("ddlPages");

            GridViewWFStepsNames.PageIndex = ddlPages.SelectedIndex;

            // a method to populate your grid
            // PopulateGrid();
            GridViewWFStepsNames.DataSource = dt;
            GridViewWFStepsNames.DataBind();
        }
        protected void Paginate(object sender, CommandEventArgs e)
        {

            // get the current page selected
            int intCurIndex = GridViewWFStepsNames.PageIndex;

            switch (e.CommandArgument.ToString().ToLower())
            {
                case "first":
                    GridViewWFStepsNames.PageIndex = 0;
                    break;
                case "prev":
                    GridViewWFStepsNames.PageIndex = intCurIndex - 1;
                    break;
                case "next":
                    GridViewWFStepsNames.PageIndex = intCurIndex + 1;
                    break;
                case "last":
                    GridViewWFStepsNames.PageIndex = GridViewWFStepsNames.PageCount;
                    break;
            }

            // popultate the gridview control
            // PopulateGrid();

            GridViewWFStepsNames.DataSource = dt;
            GridViewWFStepsNames.DataBind();
        }


        protected void btnReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("LandingPage.aspx");
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {

            //String WorkflowName = txtboxWorkflow.Text;
            //String stepName = txtboxStepName.Text;

            Response.Redirect("EDITWorkflowTaskForm.aspx?wfname=" + workflowname + "&stepId=" + stepId + "&stepname=" + stepname);

            //Response.Redirect("EDITWorkflowTaskForm.aspx");

       
        }

       

        protected void GridViewSelectWorkflow_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            DataTable dtsteps = new DataTable();
            dtsteps.Columns.Add("Name", typeof(string));
            dtsteps.Columns.Add("Id", typeof(string));
            dt = (DataTable)ViewState["dtTable"];
            int index = Convert.ToInt32(e.CommandArgument);
            DataRow row = dt.Rows[index];

            String emp_Name = Server.HtmlDecode(row["Name"].ToString());
            String worflow_Form_Id = Server.HtmlDecode(row["Id"].ToString());

            if (e.CommandName == "form_click")
            {

               
                Response.Redirect("EDITWorkflowTaskForm.aspx?wfname=" + workflowname + "&stepId=" 
                    + stepId + "&stepname=" + stepname+"&workflowFormId="+worflow_Form_Id+"&empName="+emp_Name);
               


            }
            if (e.CommandName == "chklist_click")
            {
                
               
                //Response.Redirect("EDITWorkflowTaskChecklist.aspx?wfname=" + workflowname + "&stepId=" + stepId + "&stepname=" + stepname);
                Response.Redirect("EDITWorkflowTaskChecklist.aspx?wfname=" + workflowname + "&stepId=" + stepId + "&stepname=" + stepname);
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {

        }

        
    }
}