using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class WebForm16 : System.Web.UI.Page
    {
        LibraryDBContext library = new LibraryDBContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReturnBook_Click(object sender, EventArgs e)
        {
            lblMsg.Text = "";
            int id = Convert.ToInt32(txtStudentId.Text);
            int code = Convert.ToInt32(txtBookCode.Text);

            bool check = library.tbl_issue.Any(x => x.StudentId == id && x.BookId == code);

            if (check)
            {
                tbl_issue row= library.tbl_issue.SingleOrDefault(x => x.StudentId == id && x.BookId == code);
                library.tbl_issue.DeleteObject(row);
                int res = library.SaveChanges();
                if (res>0)
                {
                    tbl_book book = library.tbl_book.SingleOrDefault(x => x.Code == code);
                    book.NoOfCopies++;
                    library.SaveChanges();
                    lblMsg.Text = "Book Returned successfully";
                }
                else
                {
                    lblMsg.Text = "Some error occured";
                }
                
            }
            else
            {
                lblMsg.Text = "Could not find any entry ";
            }
        }
    }
}