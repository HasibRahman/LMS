using System;
using System.Linq;


namespace LibraryManagementSystem
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        LibraryDBContext library = new LibraryDBContext();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            RegisterTeacher();
        }

        private void RegisterTeacher()
        {
            try
            {
                tbl_teacher t = new tbl_teacher();
                t.TeacherId = Convert.ToInt32(txtTeacherId.Text);
                t.Name = txtTeacherName.Text;
                t.Designation = txtDesignation.Text;
                t.Branch = txtBranch.Text;
                t.ContactNumber = Convert.ToInt32(txtContact.Text);

                tbl_teacherLogin tl = new tbl_teacherLogin();
                tl.TeacherId = Convert.ToInt32(txtTeacherId.Text);
                tl.UserName = txtUsername.Text;
                tl.Password = txtPassword.Text;

                bool has = library.tbl_teacherLogin.Any(teacher => teacher.UserName == txtUsername.Text);

                if (has)
                {
                    Response.Write("This Username is not Available");
                }
                else
                {
                    library.AddTotbl_teacher(t);
                    library.AddTotbl_teacherLogin(tl);
                }
                try
                {
                    int res = library.SaveChanges();
                    if (res > 0)
                    {
                        Response.Write("Successfully Registered");
                        Clear();
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("Some error occured");
                }
            }
            catch (Exception e)
            {
                Response.Write("Request Cannot be done");
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Clear();
        }

        private void Clear()
        {
            txtUsername.Text = string.Empty;
            txtBranch.Text = string.Empty;
            txtConfirmPassword.Text = string.Empty;
            txtContact.Text = string.Empty;
            txtDesignation.Text = string.Empty;
            txtPassword.Text = string.Empty;
            txtTeacherId.Text = string.Empty;
            txtTeacherName.Text = string.Empty;
        }
    }
}