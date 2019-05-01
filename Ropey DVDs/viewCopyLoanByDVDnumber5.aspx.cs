using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ropey_DVDs
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
                Response.Redirect("LogInSystem.aspx");
            lblUser.Text = Session["UserName"].ToString();

        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {

            Session.Abandon();
            Response.Redirect("Default.aspx");
        }
    }
}