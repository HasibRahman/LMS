using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string u = txtUserName.Text;
            string p = txtPassword.Text;
            if (u=="admin" && p=="12345")
            {
                Session["Username"] = "admin";
                Response.Redirect("SuperAdmin.aspx");
            }
            else
            {
                Response.Redirect("LibrarianLogin.aspx");
            }
        }
    }
}