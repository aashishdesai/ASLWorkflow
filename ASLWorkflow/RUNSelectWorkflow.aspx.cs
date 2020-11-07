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
    public partial class RUNSelectWorkflow : LanguageChange
    {
        DataTable dt;
        LanguageChange check = new LanguageChange();

        private void Populate_Grid(List<ViewWorkflowsDTO> workflowsDtos)
        {
            // define the table's schema
            dt.Columns.Add(new DataColumn("Name", typeof(string)));
            dt.Columns.Add(new DataColumn("Inactive", typeof(string)));
            dt.Columns.Add(new DataColumn("Edit", typeof(string)));

            foreach (ViewWorkflowsDTO viewWorkflowsDTO in workflowsDtos)
            {


                DataRow dr = dt.NewRow();
                dr["Name"] = viewWorkflowsDTO.Workflow_Name;

                if (viewWorkflowsDTO.Inactive)
                {
                    dr["Inactive"] = ResolveUrl("~/Images/checkboxchecked.gif");
                }
                else
                {
                    dr["Inactive"] = ResolveUrl("~/Images/checkboxunchecked.gif");
                }
                //dr["Inactive"] = viewWorkflowsDTO.Inactive;
                dr["Edit"] = viewWorkflowsDTO.Workflow_Name;
                dt.Rows.Add(dr);
            }




            GridViewSelectWorkflow.DataSource = dt;
            GridViewSelectWorkflow.DataBind();
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            string language = Session["mylang"].ToString();
            check.LanguageCheck(language);

            base.InitializeCulture();


            WorkflowsService workflowsService = new WorkflowsService();
            List<ViewWorkflowsDTO> workflowsDtos = workflowsService.SearchWorkflowName(txtboxName.Text);
            //List<ViewWorkflowsDTO> workflowsDtos = workflowsService.GridEditSelectWorkflow();

            dt = new DataTable();
            Populate_Grid(workflowsDtos);


        }
        protected void grdListings_DataBound(Object sender, EventArgs e)
        {
            GridViewRow gvrPager = GridViewSelectWorkflow.BottomPagerRow;
            //int pagesize1 = GridViewSelectWorkflow.Rows; 
            int totalRows = GridViewSelectWorkflow.Rows.Count;
            int currentPage = GridViewSelectWorkflow.PageIndex;
            int pageSize = GridViewSelectWorkflow.PageSize;
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

            lblPageCount.Text = dt.Rows.Count.ToString();

        }
        protected void ddlPages_SelectedIndexChanged(Object sender, EventArgs e)
        {
            GridViewRow gvrPager = GridViewSelectWorkflow.BottomPagerRow;
            DropDownList ddlPages = (DropDownList)gvrPager.Cells[0].FindControl("ddlPages");

            GridViewSelectWorkflow.PageIndex = ddlPages.SelectedIndex;

            // a method to populate your grid
            // PopulateGrid();
            GridViewSelectWorkflow.DataSource = dt;
            GridViewSelectWorkflow.DataBind();
        }

        protected void Paginate(object sender, CommandEventArgs e)
        {

            // get the current page selected
            int intCurIndex = GridViewSelectWorkflow.PageIndex;

            switch (e.CommandArgument.ToString().ToLower())
            {
                case "first":
                    GridViewSelectWorkflow.PageIndex = 0;
                    break;
                case "prev":
                    GridViewSelectWorkflow.PageIndex = intCurIndex - 1;
                    break;
                case "next":
                    GridViewSelectWorkflow.PageIndex = intCurIndex + 1;
                    break;
                case "last":
                    GridViewSelectWorkflow.PageIndex = GridViewSelectWorkflow.PageCount;
                    break;
            }

            // popultate the gridview control
            // PopulateGrid();

            GridViewSelectWorkflow.DataSource = dt;
            GridViewSelectWorkflow.DataBind();
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("LandingPage.aspx");
        }

        protected void btnApply_Click(object sender, EventArgs e)
        {


        }

        protected void GridViewSelectWorkflow_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            // Response.Redirect("EditWorkflow.aspx?");
            if (e.CommandName == "Edit_click")
            {
                // Retrieve the row index stored in the 
                // CommandArgument property.
                int index = Convert.ToInt32(e.CommandArgument);

                // Retrieve the row that contains the button 
                // from the Rows collection.
                GridViewRow row = GridViewSelectWorkflow.Rows[index];
                ListItem WfName = new ListItem();
                WfName.Text = Server.HtmlDecode(row.Cells[0].Text)
               + " " + Server.HtmlDecode(row.Cells[1].Text);
                //ListItem Inactive = new ListItem();
                //Inactive.
                // Add code here to add the item to the shopping cart.

                Response.Redirect("RUNManInitiateWorkflow.aspx?wfname=" + WfName);
                //Session["WfName"] = WfName.Text;
                // HttpCookie cName = new HttpCookie("WfName");
                // cName.Value = WfName.Text;
                // Response.Cookies.Add(cName);
                // Response.Redirect("EditWorkflow.aspx");  


            }

        }

        protected void btnShowALL_Click(object sender, EventArgs e)
        {


            WorkflowsService workflowsService = new WorkflowsService();
            List<ViewWorkflowsDTO> workflowsDtos = workflowsService.SearchWorkflowName(txtboxName.Text = "");
            //List<ViewWorkflowsDTO> workflowsDtos = workflowsService.GridEditSelectWorkflow();
            GridViewSelectWorkflow.PageIndex = 0;

            dt = new DataTable();
            Populate_Grid(workflowsDtos);


        }
    }
}