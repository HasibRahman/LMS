using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        LibraryDBContext library = new LibraryDBContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        private void Clear()
        {
            txtNoOfCopies.Text = string.Empty;
            txtAuthor.Text = string.Empty;
            txtBookName.Text = string.Empty;
            txtCode.Text = string.Empty;
            txtPublication.Text = string.Empty;
            txtSubject.Text = string.Empty;
            lblSuccess.Text = string.Empty;
            lblFailed.Text = string.Empty;
        }

        protected void btnAddBook_Click(object sender, EventArgs e)
        {
            Clear();
            tbl_book b = new tbl_book();
            try
            {
                b.Code = Convert.ToInt32(txtCode.Text);
                b.BookName = txtBookName.Text;
                b.Author = txtAuthor.Text;
                b.Publication = txtPublication.Text;
                b.Subject = txtSubject.Text;
                b.NoOfCopies = Convert.ToInt32(txtNoOfCopies.Text);
                int i = Convert.ToInt32(txtCode.Text);

                bool exist = library.tbl_book.Any(book => book.Code == i);
                if (exist)
                {
                    lblFailed.Text = "This book Code Already Exists";
                }
                else
                {
                    library.AddTotbl_book(b);
                    int res = library.SaveChanges();

                    if (res > 0)
                    {
                        lblSuccess.Text = "Successfully Added to the library";
                    }
                }
                
            }
            catch (Exception ex)
            {
                lblFailed.Text = ex.ToString();
            }

        }

        

        protected void btnCancel_Click1(object sender, EventArgs e)
        {
            Clear();
        }
    }
}