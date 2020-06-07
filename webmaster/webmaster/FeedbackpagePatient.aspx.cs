using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;

namespace webmaster
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        Connection cs = new Connection();
        SqlConnection conn;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(cs.cs);
            conn.Open();
            cmd = new SqlCommand("select distinct a.Fname+' '+a.Lname as Name, b.PsychologistID from Users a inner join SessionApt b on a.UserID=b.PsychologistID where b.PatientID=@id;", conn);
            cmd.Parameters.AddWithValue("id", LoginPage.uID);
           
         
            SqlDataAdapter sda;

            sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();
            sda.Fill(dt);
            txtDDpsychologist.DataSource = dt;
            txtDDpsychologist.DataBind();
            conn.Close();
        
        }

        protected void txtRating_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnPatFeedsubmit_Click(object sender, EventArgs e)
        {
            try
            {
                conn = new SqlConnection(cs.cs);
                conn.Open();
                SqlCommand cm = new SqlCommand("Select SessionID from SessionApt where PsychologistID=@pid and PatientID=@tid", conn);
                cm.Parameters.AddWithValue("@pid", Convert.ToInt32(txtDDpsychologist.SelectedValue.ToString()));
                cm.Parameters.AddWithValue("@tid", LoginPage.uID);
                int session = Convert.ToInt32(cm.ExecuteScalar());
                cmd = new SqlCommand("Insert into Feedback values(@sid,@comm,@rate)", conn);
                cmd.Parameters.AddWithValue("@sid", session);
                cmd.Parameters.AddWithValue("@comm", txtFeed.Value.ToString());
                cmd.Parameters.AddWithValue("@rate", txtRating.Text.ToString());
                cmd.ExecuteNonQuery();
                conn.Close();
            }
            catch(Exception es)
            {

            }

        }
    }
}