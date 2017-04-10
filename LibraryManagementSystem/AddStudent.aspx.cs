using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{

    public partial class WebForm8 : System.Web.UI.Page
    {
        LibraryDBContext library = new LibraryDBContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Clear();
        }

        private void Clear()
        {
            txtStudentId.Text = string.Empty;
            txtStudentName.Text = string.Empty;
            txtYearOfAdmission.Text = string.Empty;
            txtRegNo.Text = string.Empty;
            txtBranch.Text = string.Empty;
            txtSection.Text = string.Empty;
            txtSemester.Text = string.Empty;
            txtUsername.Text = string.Empty;
            txtPassword.Text = string.Empty;
            lblSuccess.Text = string.Empty;
            lblFailed.Text = string.Empty;
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            RegisterStudent();
            

        }

        private void CreateStudentLogin()
        {
            tbl_studentLogin login = new tbl_studentLogin();
            login.StudentId = Convert.ToInt32(txtStudentId.Text);
            login.UserName = txtUsername.Text;
            login.Password = txtPassword.Text;

            library.AddTotbl_studentLogin(login);
            int res = library.SaveChanges();
            if (res > 0)
            {
                lblSuccess.Text = "Registered Successfully";
            }
            else
            {
                lblFailed.Text="Some error occured";
            }

        }

        public void RegisterStudent()
        {
            tbl_student student = new tbl_student();
            string xx = txtStudentId.Text;
            student.StudentId = Convert.ToInt32(txtStudentId.Text);
            student.StudentName = txtStudentName.Text;
            student.RegNo = Convert.ToInt32(txtRegNo.Text);
            student.branch = txtBranch.Text;
            student.Section = txtSection.Text;
            student.Semester = txtSemester.Text;
            student.YearOfAdmission = Convert.ToInt32(txtYearOfAdmission.Text);
            
            library.AddTotbl_student(student);
            library.SaveChanges();
            CreateStudentLogin();
        }
    }
}