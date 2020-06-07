using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace webmaster
{
    public partial class SignupPage : System.Web.UI.Page
    {
        Connection cs = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void signbtnpat_Click(object sender, EventArgs e)
        {
            bool check, ucheck;
            ucheck = cs.CNICcheck(txtpatCnic.Value.ToString());
            if (ucheck == true)
            {
                ucheck = cs.EmailCheck(txtpatEmail.Value.ToString());
                if (ucheck == true)
                {
                
                    check = cs.Adduser("Patient", txtpatFname.Value.ToString(), txtpatLname.Value.ToString(), txtpatPhone.Value.ToString(), txtpatCnic.Value.ToString(), txtpatEmail.Value.ToString(), txtpatPass.Value.ToString());
                    if (check == true)
                    {
                        lblerror.CssClass.Replace("text-danger", "text-success");
                        lblerror.CssClass = "msgs";
                        lblerror.Text = "Account Created, Thankyou.";
                        txtpatCnic.Value = "";
                        txtpatEmail.Value = "";
                        txtpatFname.Value = "";
                        txtpatLname.Value = "";
                        txtpatPass.Value = "";
                        txtpatPhone.Value = "";
                    }
                    else
                    {
                        lblerror.CssClass = "msgr";
                        lblerror.Text = "Account couldn't be created, please try again by rechecking values.";
                    }
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