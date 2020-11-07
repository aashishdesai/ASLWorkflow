using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading;
using System.Globalization;


namespace ASLWorkflow
{
    public class LanguageChange : System.Web.UI.Page
    {

        public void LanguageCheck(String s)
        {


            Thread.CurrentThread.CurrentUICulture = new CultureInfo(s);
            Thread.CurrentThread.CurrentCulture = new CultureInfo(s);

            Session["mylang"] = Thread.CurrentThread.CurrentUICulture;
            Session["mylang"] = Thread.CurrentThread.CurrentCulture;

        }

    }
}