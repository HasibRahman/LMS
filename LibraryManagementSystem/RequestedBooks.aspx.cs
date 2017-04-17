using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class WebForm21 : System.Web.UI.Page
    {
        LibraryDBContext library = new LibraryDBContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Session["Username"]);
            GridView1.DataSource = library.tbl_request.Where(x => x.StudentId == id);
            GridView1.DataBind();
        }
    }
}