using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webmaster
{
    public partial class signupPsychologist : System.Web.UI.Page
    {
        Connection cs = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            RangeValidator1.MinimumValue =(Convert.ToInt32(DateTime.Today.Year)-50).ToString();
            RangeValidator1.MaximumValue = (Convert.ToInt32(DateTime.Today.Year) -1).ToString();
        }

        protected void signbtnpsycho_Click(object sender, EventArgs e)
        {
            bool check, ucheck;
            ucheck = cs.CNICcheck(txtPsyCNIC.Value.ToString());
            if (ucheck == true)
            {
                ucheck = cs.EmailCheck(txtPsyEmail.Value.ToString());
                if (ucheck == true)
                {
                    
                  
                    check = cs.Adduser("Psychologist", txtPsyFname.Value.ToString(), txtPsyLname.Value.ToString(), txtPsyPhone.Value.ToString(), txtPsyCNIC.Value.ToString(), txtPsyEmail.Value.ToString(), txtPsyPass.Value.ToString());
                    ucheck=cs.addpsycho(txtPsyDegree.Value.ToString(), txtPsyProgram.Value.ToString(), txtPsyInstitute.Value.ToString(), txtPsyYear.Value.ToString(), txtPsyEnroll.Value.ToString(), txtPsyEmail.Value.ToString());

                    if(ucheck&&check==true)
                    {
                        lblerror.CssClass.Replace("text-danger", "text-success");
                        lblerror.CssClass = "msgs";
                        lblerror.Text = "Account Created, Thankyou.";
                        txtPsyCNIC.Value = "";
                        txtPsyEmail.Value = "";
                        txtPsyFname.Value = "";
                        txtPsyLname.Value = "";
                        txtPsyPass.Value = "";
                        txtPsyPhone.Value = "";

                    }
                    else
                    {
                        lblerror.Text = "Account Couldn't be created, check values & try again.";
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