using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Ropey_DVDs
{
    public partial class UserDvdViewByLastName : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection mycon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                String myquery = "Select  Actor.ActorSurname,CastMember.DVDNumber,CastMember.ActorNumber,DVDTitle.DVDTitle,DVDTitle.CategoryNumber,DVDTitle.DateReleased,DVDTitle.StandardCharge,DVDTitle.PenaltyCharge from Actor, CastMember, DVDTitle where Actor.ActorNumber = CastMember.ActorNumber AND CastMember.DVDNumber = DVDTitle.DVDNumber AND Actor.ActorSurname =Actor.ActorSurname";
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = myquery;
                cmd.Connection = mycon;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                int totalrows = ds.Tables[0].Rows.Count;
                int c = 0;
                while (c < totalrows)
                {
                    DropDownList1.Items.Add(ds.Tables[0].Rows[c]["ActorNumber"].ToString());
                    c++;
                }
                mycon.Close();
            }
        }



        protected void btnSearch_Click(object sender, EventArgs e)
        {
            SqlConnection mycon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            String myquery = "Select  Actor.ActorSurname,CastMember.DVDNumber,CastMember.ActorNumber,DVDTitle.DVDTitle,DVDTitle.CategoryNumber,DVDTitle.DateReleased,DVDTitle.StandardCharge,DVDTitle.PenaltyCharge from Actor, CastMember, DVDTitle where Actor.ActorNumber = CastMember.ActorNumber AND CastMember.DVDNumber = DVDTitle.DVDNumber AND Actor.ActorNumber =" + DropDownList1.SelectedItem.Text;
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = mycon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }
    }
}
    