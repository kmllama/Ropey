using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ropey_DVDs
{
    public partial class ChangePassword_F14_ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            GridView2.Visible = false;



            if (Session["UserType"] == null )
            {
                Response.Redirect("LogInSystem.aspx");
            }
            else
            {
              
                lblUserType.Text = Session["UserType"].ToString();

                if (Session["UserType"].ToString() == "Manager")
                {
                    lblUserName.Text = Session["UserName"].ToString();
                    GridView1.Visible = true;
                }
                else if (Session["UserType"].ToString() == "Assistant")
                {
                    lblUserName.Text = Session["UserName"].ToString();
                    GridView2.Visible = true;
                }


            }


        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {

            Session.Abandon();
            Response.Redirect("Default.aspx");
        }
    }
}