using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        LibraryDBContext library = new LibraryDBContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"]!=null)
            {
                int id = Convert.ToInt32(Session["Username"]);
                string username = library.tbl_studentLogin.Where(x => x.StudentId == id).Select(x=>x.UserName).FirstOrDefault();
                Response.Write("Welcome "+username);
            }
            else
            {
                Response.Redirect("StudentLogin.aspx");
            }
        }
    }
}