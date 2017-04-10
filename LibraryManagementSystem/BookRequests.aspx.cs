using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class WebForm18 : System.Web.UI.Page
    {
        LibraryDBContext library = new LibraryDBContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //btnPending_Click();
            }
           
        }

        private void btnPending_Click()
        {
            GridViewBookRequests.DataSource = library.tbl_request.Select(x => x.Status == "Pending");
            GridViewBookRequests.DataBind();
        }

        protected void btnPending_Click(object sender, EventArgs e)
        {
            GridViewBookRequests.DataSource = library.tbl_request.Where(x => x.Status == "Pending");
            GridViewBookRequests.DataBind();
        }

        protected void btnAccepted_Click(object sender, EventArgs e)
        {
            GridViewBookRequests.DataSource = library.tbl_request.Select(x => x.Status == "Accepted");
            GridViewBookRequests.DataBind();
        }

        protected void btnRejected_Click(object sender, EventArgs e)
        {
            GridViewBookRequests.DataSource = library.tbl_request.Select(x => x.Status == "Rejected");
            GridViewBookRequests.DataBind();
        }

        protected void btnShowAll_Click(object sender, EventArgs e)
        {
            GridViewBookRequests.DataSource = library.tbl_request;
            GridViewBookRequests.DataBind();
        }

        protected void btnAccept_Click(object sender, EventArgs e)
        {
            
           
        }
    }
}