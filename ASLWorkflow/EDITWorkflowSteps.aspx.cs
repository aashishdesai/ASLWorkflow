using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Collections;
using DataLayer;



namespace ASLWorkflow
{


    public partial class EDITWorkflowSteps : LanguageChange
    {
        char c;
        string wfname;
        // string selected_drop_id= "";
        DataTable dt;

        LanguageChange check = new LanguageChange();


        protected void Page_Load(object sender, EventArgs e)
        {
            
            string language = Session["mylang"].ToString();
            check.LanguageCheck(language);

            base.InitializeCulture();
            wfname = Request.QueryString["WfName"];
            txtboxName.Text = wfname;
            txtboxName.Enabled = false;

            // Response.Write(language);

            if (language == "en-US")
            {
                c = 'e';
            }

            else
            {

                c = 'f';
            }
           


            if (!Page.IsPostBack)
            {
                //lbltxt.Text = "1st time";


                DataTable dt_module = fill_module(c);
                DropDownModule.DataSource = dt_module;
                DropDownModule.DataTextField = "Str";
                DropDownModule.DataValueField = "Id";
                DropDownModule.DataBind();

                DataTable dt_category = fill_category(c);
                DropDownCategory.DataSource = dt_category;
                DropDownCategory.DataTextField = "Str";
                DropDownCategory.DataValueField = "Id";
                DropDownCategory.DataBind();
                WorkflowsService workflowsService = new WorkflowsService();

                List<LoadWorkflowStepsDTO> wfsdto = workflowsService.LoadWorkflowStepsDTO(txtboxName.Text);
                if (wfsdto.Count > 0)
                {
                    DataTable dtsteps = new DataTable();
                    dtsteps.Columns.Add("Str", typeof(string));
                    dtsteps.Columns.Add("Id", typeof(string));

                    foreach (LoadWorkflowStepsDTO wfs in wfsdto)
                    {

                        DataRow row = dtsteps.NewRow();
                        row["Id"] = wfs.step_Id;
                        row["Str"] = wfs.step_Screen_Name;
                        dtsteps.Rows.Add(row);
                    }

                    GridViewSteps.DataSource = dtsteps;

                    GridViewSteps.DataBind();
                    GridViewSteps.Columns[2].Visible = false;

                    ViewState["dtTable"] = dtsteps;
                }
            }
            
            

        }

        public DataTable fill_module(char lang)
        {

            String strConnString = ConfigurationManager.ConnectionStrings["ASL"].ConnectionString;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = (strConnString);

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "select_module";
            cmd.Parameters.Add("@Language", SqlDbType.Char).Value = lang;
            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = cmd;
            DataTable dt1 = new DataTable("Module");
            adapter.Fill(dt1);
            return dt1;
        }

        public DataTable fill_category(char lang)
        {

            String strConnString = ConfigurationManager.ConnectionStrings["ASL"].ConnectionString;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = (strConnString);

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "select_category";
            cmd.Parameters.Add("@Language", SqlDbType.Char).Value = lang;
            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = cmd;
            DataTable dt2 = new DataTable("category");
            adapter.Fill(dt2);
            return dt2;


        }

        public DataTable fill_area(string area, char c)
        {

            
            String strConnString = ConfigurationManager.ConnectionStrings["ASL"].ConnectionString;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = (strConnString);

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "select_area";
            cmd.Parameters.Add("@module", SqlDbType.VarChar).Value = area;
            cmd.Parameters.Add("@Language", SqlDbType.Char).Value = c;
            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = cmd;
            DataTable dt3 = new DataTable("area");
            adapter.Fill(dt3);
            return dt3;



        }



        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("LandingPage.aspx");
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("LandingPage.aspx");
        }

        protected void txtboxName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownModule_SelectedIndexChanged(object sender, EventArgs e)
        {

            Response.Write(DropDownModule.SelectedItem.Value);
            // selected_drop_id = DropDownModule.SelectedItem.Value;
            String area = DropDownModule.SelectedItem.Value;
            DataTable dt_area = fill_area(area, c);

            GridViewArea.DataSource = dt_area;
            ////GridViewArea.DataSourceID = "Id";
            //GridViewArea.DataValueField = "Url";
            GridViewArea.Columns[3].Visible = true;
            GridViewArea.DataBind();
            GridViewArea.Columns[3].Visible = false;
        }
        ArrayList arraylist1 = new ArrayList();
        ArrayList arraylist2 = new ArrayList();

        
        protected void Button1_Click(object sender, EventArgs e)
        {


            dt = new DataTable();
            dt.Columns.Add("Str", typeof(string));
            dt.Columns.Add("Id", typeof(string));
            if (ViewState["dtTable"] != null)
            {
                dt =(DataTable) ViewState["dtTable"];
            }

            
            foreach (GridViewRow gvRow in GridViewArea.Rows)
            {
             
                CheckBox checkbox = (CheckBox)gvRow.Cells[0].FindControl("CheckBox1");
                if (checkbox.Checked==true)
                {
                   
                    String recordToAdd = gvRow.Cells[2].Text;
                    String recordId = gvRow.Cells[3].Text;
                    
                    bool recordPresent = false;
                    foreach (GridViewRow gvStepRow in GridViewSteps.Rows)
                    {
                        String recordInGrid = gvStepRow.Cells[1].Text;
                        if (recordInGrid == recordToAdd)
                        {
                            recordPresent = true;
                            //lbltxt.Text = recordToAdd+""+"Already exist";
                            break;
    
                        }
                        
                    }

                    if (!recordPresent)
                    {
                            DataRow row = dt.NewRow();
                            row["Str"] = recordToAdd;
                            row["Id"] = recordId;
                           // lbltxt.Text = recordId.ToString();
                            dt.Rows.Add(row);
                    }
                }
            }
            //lbltxt.Text = dt.Rows.Count.ToString();
            GridViewSteps.DataSource = dt;
            GridViewSteps.Columns[2].Visible = true;
            GridViewSteps.DataBind();
           GridViewSteps.Columns[2].Visible = false;
            ViewState["dtTable"] = dt;
        }

        private void btn_movebackselected_Click1()
        { 
        
        
        
        
        
        }
        private void delete_click(object sender, GridViewDeleteEventArgs e)
        {
            //DataTable dt = new DataTable();
            
            //dt.Rows.RemoveAt(e.RowIndex);
            //GridViewSteps.DataSource = dt;
            //GridViewSteps.DataBind(); 
        }

        protected void GridViewSteps_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
            if (e.CommandName == "delete_click")
            {

                //int RowIndex = Convert.ToInt32((e.CommandArgument).ToString());
                ////GridViewRow gvr = (GridViewRow)(((ButtonField)e.CommandSource).);
                //dt = new DataTable();
                //dt.Columns.Add("Str", typeof(string));

                //dt = (DataTable) ViewState["dtTable"];

                
                //ViewState["dtTable"]= dt;
                //GridViewSteps.DataSource = dt;
                //GridViewSteps.DataBind();

                DataTable dt = (DataTable)ViewState["dtTable"];

                int index = Convert.ToInt32(e.CommandArgument);

                DataRow row = dt.Rows[index];
                String stepId = row["Id"].ToString();
                //GridViewRow row = GridViewSteps.Rows[index];
                //String stepId = Server.HtmlDecode(row.Cells[2].Text);
                WorkflowsService workflowsService = new WorkflowsService();
                workflowsService.DeleteWorkflowStep(txtboxName.Text, stepId);
                dt.Rows.RemoveAt(index);
                GridViewSteps.DataSource = dt;
                GridViewSteps.DataBind();
                ViewState["dtTable"]= dt;              
               

            }
            else {
                Response.Write("Cant");
            }
            if (e.CommandName == "package_click")
            {
                // Retrieve the row index stored in the 
                // CommandArgument property.
                int index = Convert.ToInt32(e.CommandArgument);

                // Retrieve the row that contains the button 
                // from the Rows collection.
                GridViewRow row = GridViewSteps.Rows[index];
                ListItem WfStepName = new ListItem();
                WfStepName.Text = Server.HtmlDecode(row.Cells[1].Text);
                String WorkflowName =  Server.HtmlDecode(txtboxName.Text);
                String stepId =  Server.HtmlDecode(row.Cells[2].Text);
                Response.Redirect("EDITWorkflowTask.aspx?wfname=" + WfStepName + "&workflowname=" + WorkflowName + "&stepId=" + stepId);
            }
            else
            {
            }

        }

        protected void GridViewArea_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string stepID;
            dt = new DataTable();
            dt.Columns.Add("Str", typeof(string));
            dt.Columns.Add("Id", typeof(string));
            if (ViewState["dtTable"] != null)
            {
                dt = (DataTable)ViewState["dtTable"];
            }

            WorkflowsService workflowsService = new WorkflowsService();
            for(int i = 0; i < dt.Rows.Count; i++)
            {
                DataRow row = dt.Rows[i];
                stepID = row["Id"].ToString();
                
                workflowsService.SaveWorkflowSteps(txtboxName.Text, stepID,i);
            }
            lbltxt.Text = "Your Steps are being Saved";


        }

        protected void btnReturn_Click1(object sender, EventArgs e)
        {
            Response.Redirect("LandingPage.aspx");
        }

        protected void btnBack_Click1(object sender, EventArgs e)
        {
            Response.Redirect("SetupWorkflow.aspx");
        }

       


    }
}
