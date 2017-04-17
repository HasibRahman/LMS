using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class WebForm19 : System.Web.UI.Page
    {
        LibraryDBContext library = new LibraryDBContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            int tempid = Convert.ToInt32(Session["Username"]);
            var query = library.tbl_issue.Join(library.tbl_student, i => i.StudentId, s => s.StudentId, (i, s) =>
             new { i.BookId, s.StudentId, s.RegNo, s.StudentName, s.Semester, s.Section, i.IssueDate, i.ReturnDate }).Where(x=> x.StudentId==tempid);
            //var q = query.Select(x => x.StudentId == tempid);
            GridView.DataSource = query;
            GridView.DataBind();
        }
    }
}