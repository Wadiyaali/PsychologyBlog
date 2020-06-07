using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webmaster
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        Connection cs = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signbtnwriter_Click(object sender, EventArgs e)
        {
            bool check,ucheck;
            ucheck = cs.CNICcheck(txtwriterCnic.Value.ToString());
            if(ucheck==true)
            {
                ucheck = cs.EmailCheck(txtwriterEmail.Value.ToString());
                if(ucheck==true)
                {
                    lblerror.CssClass.Replace("text-danger","text-success");
                    lblerror.CssClass = "msgs";
                    lblerror.Text = "Account Created, Thankyou.";

                    check = cs.Adduser("Writer", txtwriterFname.Value.ToString(), txtwriterLname.Value.ToString(), txtwriterPhone.Value.ToString(), txtwriterCnic.Value.ToString(), txtwriterEmail.Value.ToString(), txtwriterPass.Value.ToString());
                    txtwriterCnic.Value = "";
                    txtwriterEmail.Value = "";
                    txtwriterFname.Value = "";
                    txtwriterLname.Value = "";
                    txtwriterPass.Value = "";
                    txtwriterPhone.Value = "";

                }
                else
                {
                    lblerror.Enabled = true;
                    lblerror.Text = "Sorry, Email Already exists";
                    
                }
               
            }
            else
            {
                lblerror.Enabled = true;
                lblerror.Text = "Sorry, CNIC Already exists";
            }
           
        }
    }
}