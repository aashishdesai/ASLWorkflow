using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Globalization;

namespace ASLWorkflow
{
    public partial class LandingPage : System.Web.UI.Page
    {

        string current_lang;

        public const string PostBackEventTarget = "__EVENTTARGET";
        public const string LanguageDropDownID = "ctl00$ContentPlaceHolder1$drpdownLanguages";

        LanguageChange check = new LanguageChange();
        protected void Page_Load(object sender, EventArgs e)
        {
            current_lang= Session["myLang"].ToString();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddWorkflow.aspx?"+current_lang);
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {

        }

        protected void btnSetUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("SetupWorkflow.aspx");
        }

        protected void btnEdit_Click2(object sender, EventArgs e)
        {
            Response.Redirect("EDITSelectWorkflow.aspx");
        }

        protected void btnRun_Click(object sender, EventArgs e)
        {
            Response.Redirect("RUNSelectWorkflow.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("InitiateWorkflow.aspx");
        }

        protected void btnReview_Click(object sender, EventArgs e)
        {
            Response.Redirect("WorkflowStatusReviewScreen.aspx");
        }

        protected void btnReport_Click(object sender, EventArgs e)
        {
            Response.Redirect("WorkFlowTaskStandardReport.aspx");
        }

        protected void btnMyInProgressTasks_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyWorkflowTasks.aspx");
        }

        protected void drpdownLanguages_SelectedIndexChanged(object sender, EventArgs e)
        {

            Session["myLang"] = drpdownLanguages.SelectedValue;


        }

        protected override void InitializeCulture()
        {
            if (Request[PostBackEventTarget] != null)
            {
                string controlID = Request[PostBackEventTarget];

                if (controlID.Equals(LanguageDropDownID))
                {
                    string selectedValue = Request.Form[Request[PostBackEventTarget]].ToString();
                    //SetCulture(selectedValue, selectedValue);
                    check.LanguageCheck(selectedValue);
                }
            }

            base.InitializeCulture();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string selectedLanguage = drpdownLanguages.SelectedValue;
            HttpContext.Current.Session["mylang"] = selectedLanguage;
        }

        protected void SetCulture(string name, string locale)
        {
            Thread.CurrentThread.CurrentUICulture = new CultureInfo(name);
            Thread.CurrentThread.CurrentCulture = new CultureInfo(locale);

            Session["mylang"] = Thread.CurrentThread.CurrentUICulture;
            Session["mylang"] = Thread.CurrentThread.CurrentCulture;
        }
    }
}