using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using DataLayer;
using BusinessLayer;

namespace ASLWorkflow
{
    public partial class EmployeeSearch : System.Web.UI.Page
    {


        //List<EmployeeSearchDTO> employeesearchDtos;
        DataTable dt;

        String stepname, workflowname, stepID;

        protected void Page_Load(object sender, EventArgs e)
        {
            workflowname = Request.QueryString["wfname"];
            hiddenWFName.Value = workflowname;
            //txtboxWorkflow.Text = workflowname;
            stepname = Request.QueryString["stepname"];
            hiddenStepName.Value = stepname;
            // txtboxStepName.Text = stepname;

            stepID = Request.QueryString["stepId"];
            hiddenStepID.Value = stepID;
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            String searchBy = dropDownSearch.SelectedValue.ToString();
            String filterBy = txtBoxFilterBy.Text.ToString();
            WorkflowsService wfservice = new WorkflowsService();
            List<EmployeeSearchDTO> employeesearchDtos = wfservice.SearchEmployee(searchBy, filterBy);
            ListBox1.DataSource = employeesearchDtos;
            ListBox1.DataTextField = "id";
            ListBox1.DataValueField = "name";
            ListBox1.DataBind();
        }


        protected void btnAdd_Click(object sender, EventArgs e)
        {
            //if (ListBox1.SelectedItem != null)
            //{
            ////String workflowName = Request.QueryString["wfname"];
            ////String stepname = Request.QueryString["stepname"];
            ////String stepId = Request.QueryString["stepId"];
            ////if (ListBox1.Items.Count > 0)
            ////{
            ////    String empId = ListBox1.SelectedItem.Value;
            ////    Response.Write(empId);
            ////    WorkflowsService wfservice = new WorkflowsService();
            ////    wfservice.AssignEmployee(empId, workflowName, stepId);
            //}



            string empName = ListBox1.SelectedItem.ToString();
            string empId = ListBox1.SelectedItem.Value.ToString();

            string Script =
            string.Format(
            "window.opener.document.getElementById( '{0}' ).value = '{1}';" +
             "window.opener.document.getElementById( '{2}' ).value = '{3}';" +
            "window.close();",
            this.Request.QueryString["targetId"], empName,
            this.Request.QueryString["empId"], empId);
            this.ClientScript.RegisterStartupScript(typeof(EmployeeSearch), "close", "<script>" + Script + "</script>");

            //Response.Redirect("EDITWorkflowTaskForm.aspx?wfname1=" + workflowname + "&empName=" + empName );


        }


    }




}