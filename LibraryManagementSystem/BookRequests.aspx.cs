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
            //GridViewBookRequests.DataSource = library.tbl_request.Where(x => x.Status == "Pending");
            //GridViewBookRequests.DataBind();

            //if (GridViewBookRequests.Rows.Count == 0)
            //{
            //    lblmsg.Text = "No Pending Request";
            //}
        }


        protected void btnPending_Click(object sender, EventArgs e)
        {

            GridViewBookRequests.DataSource = library.tbl_request.Where(x => x.Status == "Pending");
            GridViewBookRequests.DataBind();
            if (GridViewBookRequests.Rows.Count == 0)
            {
                lblmsg.Text = "No Pending Request";
                GridViewBookRequests.DataBind();
            }
            GridViewBookRequests.Visible = true;
        }

        protected void btnAccepted_Click(object sender, EventArgs e)
        {
            GridView1.DataSource = library.tbl_request.Where(x => x.Status == "Accepted");
            GridView1.DataBind();
            GridViewBookRequests.Visible = false;
        }

        protected void btnRejected_Click(object sender, EventArgs e)
        {
            GridView1.DataSource = library.tbl_request.Where(x => x.Status == "Rejected");
            GridView1.DataBind();
            GridViewBookRequests.Visible = false;
        }

        protected void btnShowAll_Click(object sender, EventArgs e)
        {
            GridView1.DataSource = library.tbl_request;
            GridView1.DataBind();
            GridViewBookRequests.Visible = false;
        }

        protected void btnAccept_Click(object sender, EventArgs e)
        {
        }


        protected void GridViewBookRequests_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
        }

        protected void GridViewBookRequests_RowCommand1(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Accept")
            {
                int i = Convert.ToInt32(e.CommandArgument);
                var val = GridViewBookRequests.Rows[i].Cells[3].Text;
                int id = Convert.ToInt32(val);
                tbl_request r = library.tbl_request.First(x => x.RequestId == id);
                r.Status = "Accepted";
                library.SaveChanges();
                GridViewBookRequests.DataBind();
            }

            if (e.CommandName == "Reject")
            {
                int i = Convert.ToInt32(e.CommandArgument);
                var val = GridViewBookRequests.Rows[i].Cells[3].Text;
                int id = Convert.ToInt32(val);
                tbl_request r = library.tbl_request.First(x => x.RequestId == id);
                r.Status = "Rejected";
                library.SaveChanges();
                GridViewBookRequests.DataBind();
            }
        }
    }
}