using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASLWorkflow
{
    public partial class WorkflowMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblCurrentDateTime.Text = DateTime.Now.ToLongDateString(); 
        }

        protected void btnLogOff_Click(object sender, EventArgs e)
        {

        }
    }
}