using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        LibraryDBContext library = new LibraryDBContext();
        bool E=true;
        bool A = true;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIssueBook_Click(object sender, EventArgs e)
        {

            lblEligibility.Text = string.Empty;
            lblSuccess.Text = string.Empty;
            lblFailed.Text = string.Empty;

            int code = Convert.ToInt32(txtCode.Text);
            int id = Convert.ToInt32(txtStudentId.Text);

            bool check = library.tbl_issue.Any(x => x.BookId == code && x.StudentId == id);
            if (check)
            {
                lblFailed.Text = "You Already Borrowed this book";
            }
            else
            {
                IssueBook();
                
            }

        }

        private void IssueBook()
        {

            tbl_issue issue = new tbl_issue();
            issue.BookId = Convert.ToInt32(txtCode.Text);
            issue.StudentId = Convert.ToInt32(txtStudentId.Text);
            issue.IssueDate = DateTime.Today.Date;
            issue.ReturnDate = DateTime.Today.AddDays(7);

            if (E && A)
            {
                
                    library.AddTotbl_issue(issue);
                
                    int res = library.SaveChanges();
                    if (res > 0)
                    {
                    int code = Convert.ToInt32(txtCode.Text);
                    tbl_book q = (from x in library.tbl_book
                                  where x.Code == code
                                  select x).First();
                    q.NoOfCopies = q.NoOfCopies - 1;

                    library.SaveChanges();
                    lblSuccess.Text = "Book Issued";
                    }
                
               
            }
            else
            {
                lblEligibility.Text = "Cannot Process , Check Eligibility and Availability";
            }
            
            
        }

        protected void btnAvailability_Click(object sender, EventArgs e)
        {
            lblEligibility.Text = string.Empty;
            lblSuccess.Text = string.Empty;
            lblFailed.Text = string.Empty;
            int code = Convert.ToInt32(txtCode.Text);

            var no = library.tbl_book.Where(x => x.Code == code).Select(x => x.NoOfCopies).FirstOrDefault();
            if (no==null || no==0)
            {
                lblAvailability.Text = "Book is currently not Available";
                A = false;
            }
            else
            {
                lblAvailability.Text = "Book is available";
                
            }
            
        }

        protected void btnEligibility_Click(object sender, EventArgs e)
        {
            lblEligibility.Text = string.Empty;
            lblSuccess.Text = string.Empty;
            lblFailed.Text = string.Empty;
            int id = Convert.ToInt32(txtStudentId.Text);

            int count = library.tbl_issue.Count(x => x.StudentId == id);

            if (count>=3)
            {
                lblEligibility.Text = "You have already borrowed 3 books.";
                E = false;
            }
            else
            {
                lblEligibility.Text = "You are eligible to borrow this book";
               
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Clear();
        }

        private void Clear()
        {
            lblSuccess.Text = string.Empty;
            lblFailed.Text = string.Empty;
            lblAvailability.Text = string.Empty;
            lblEligibility.Text= string.Empty;
            txtStudentId.Text= string.Empty;
            txtCode.Text= string.Empty;
        }
    }
}