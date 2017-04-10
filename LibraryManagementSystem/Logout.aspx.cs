using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Username"] = null;
            Session.Abandon();
            Session.Clear();
            Response.Redirect("MainHomePage.aspx");
        }
    }
}