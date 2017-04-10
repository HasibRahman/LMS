using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class WebForm15 : System.Web.UI.Page
    {
        LibraryDBContext library = new LibraryDBContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            var query =  library.tbl_issue.Join(library.tbl_student, i => i.StudentId, s=>s.StudentId, (i,s) =>
            new { i.BookId,s.StudentId,s.RegNo,s.StudentName,s.Semester,s.Section,i.IssueDate,i.ReturnDate });
            GridViewBorrowers.DataSource = query;
            GridViewBorrowers.DataBind();
        }
    }
}