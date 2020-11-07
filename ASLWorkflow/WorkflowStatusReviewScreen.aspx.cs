using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASLWorkflow
{
    public partial class WorkflowStatusReviewScreen : LanguageChange
    {
        LanguageChange check = new LanguageChange();

        protected void Page_Load(object sender, EventArgs e)
        {
            string language = Session["mylang"].ToString();
            check.LanguageCheck(language);

            base.InitializeCulture();
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("LandingPage.aspx");
        }
    }
}