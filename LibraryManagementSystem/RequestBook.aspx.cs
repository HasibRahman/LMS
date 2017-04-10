using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class WebForm17 : System.Web.UI.Page
    {
        LibraryDBContext library = new LibraryDBContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            tbl_request book = new tbl_request();

            book.BookName = txtBookName.Text;
            book.Author = txtAuthor.Text;
            book.Subject = txtSubject.Text;
            book.StudentId = Convert.ToInt32(Session["Username"]);
            book.Status = "Pending";
            library.AddTotbl_request(book);
            int res = library.SaveChanges();
            if (res>0)
            {
                lblSuccess.Text = "Request Successful";

            }
            else
            {
                lblFailed.Text = "Request Failed";
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            lblSuccess.Text=string.Empty;
            lblFailed.Text= string.Empty;
            txtBookName.Text= string.Empty;
            txtAuthor.Text= string.Empty;
            txtSubject.Text= string.Empty;
        }
    }
}