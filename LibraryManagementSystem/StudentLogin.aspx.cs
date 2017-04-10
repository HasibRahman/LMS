using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        LibraryDBContext library = new LibraryDBContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

        protected void btnLogin_Click1(object sender, EventArgs e)
        {
            lblmsg.Text = string.Empty;

            int id = Convert.ToInt32(txtStudentId.Text);
            bool ch = library.tbl_studentLogin.Any(x => x.StudentId == id);
            if (ch)
            {
                bool check = library.tbl_studentLogin.Any(x => x.StudentId == id && x.Password == txtPassword.Text);
                if (check)
                {
                    Session["Username"] = txtStudentId.Text;
                    Response.Redirect("StudentHome.aspx");
                }
                else
                {
                    lblmsg.Text = "Id and password doesn't match ";
                }
            }
            else
            {
                lblmsg.Text = "This Student Id doesn't exist , Contact Admin";
            }
        }
    }
}