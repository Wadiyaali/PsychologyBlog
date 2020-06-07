using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webmaster
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSessionsbmt_Click(object sender, EventArgs e)
        {

        }

        protected void btnSessionsbmt_Click1(object sender, EventArgs e)
        {
            bool boked = false;
            //Response.Write("<script>alert('the val is:"+ Convert.ToInt32(ddEP.SelectedValue) +"')</script
            try
            {

            
            Connection sess = new Connection();
            bool ans = sess.CheckAvailability(Convert.ToInt32(ddPsy.SelectedValue), Convert.ToDateTime(dateSession.Value).ToString(), Convert.ToInt32(tbSessionTime.Text));
            if (ans == true)
            {
                bool ca = sess.SaveCase(LoginPage.uID, Convert.ToInt32(tbSev.Text), Convert.ToInt32(ddEP.SelectedValue));
                if (ca == true)
                {
                    int k = sess.GetCaseID(LoginPage.uID);
                    boked = sess.BookApt(LoginPage.uID, Convert.ToInt32(ddPsy.SelectedValue), k, dateSession.Value, Convert.ToInt32(tbSessionTime.Text));
                    if (boked == true)
                    {
                        Response.Write("<script>alert('Your session has been booked')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Your session could not be booked. We apologize for the inconvenience')</script>");
                    }
                }
            }
            }
            catch(Exception es)
            {

            }
        }
    }
}