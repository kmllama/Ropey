using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ropey_DVDs
{
    public partial class LogInSystem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSignIn_Click(object sender, EventArgs e)
        {

            String mycon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Ropeydata.mdf;Integrated Security=True";

            SqlConnection scon = new SqlConnection(mycon);

            String myquery = "select UserName,UserType,UserPassword from [dbo].[User] where UserName='" + txtUser.Text.Trim() + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);

            String uname;
            String pass;
            String Utype;
            if (ds.Tables[0].Rows.Count > 0)
            {

                uname = ds.Tables[0].Rows[0]["UserName"].ToString();
                Utype = ds.Tables[0].Rows[0]["UserType"].ToString();
                pass = ds.Tables[0].Rows[0]["UserPassword"].ToString();

                scon.Close();
                if (uname == txtUser.Text.Trim() && Utype == DropDownList1.SelectedItem.Text && pass == txtPass.Text)
                {
                    Session["UserName"] = uname;
                    Session["UserType"] = Utype;

                    Response.Redirect("DVDonLoan11.aspx");
                }

                else
                {
                    lblError.Text = "Invalid Username or Password - Relogin with Correct Username Password";
                }
            }
            else
            {
                lblError.Text = "Invalid Username or Password";
            }



            //using (SqlConnection sqlCon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Ropeydata.mdf;Integrated Security=True;"))
            //{
            //    sqlCon.Open();
            //    string query = "SELECT COUNT(1) FROM [dbo].[User] WHERE UserName=@UserName AND UserType=@UserType AND UserPassword=@UserPassword";
            //    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
            //    sqlCmd.Parameters.AddWithValue("@UserName", txtUser.Text.Trim());
            //    sqlCmd.Parameters.AddWithValue("@UserType", DropDownList1.SelectedItem.Text);
            //    sqlCmd.Parameters.AddWithValue("@UserPassword", txtPass.Text.Trim());
            //    int count = Convert.ToInt32(sqlCmd.ExecuteScalar());

            //    if (count == 1 && DropDownList1.SelectedItem.Text == "Manager")
            //    {
            //        Session["UserType"] = DropDownList1.SelectedItem.Text;
            //        Response.Redirect("ChangePassword(F14).aspx");

            //    }
            //    else if (count == 1 && DropDownList1.SelectedItem.Text == "Assistant")
            //    {
            //        Session["UserType"] = DropDownList1.SelectedItem.Text;
            //        Response.Redirect("DVDonLoan11.aspx");
            //    }


            //    else
            //    {
            //        lblError.Text = "Please Check your UserName Password";
            //    }
            //}
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
