using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webmaster
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        Connection cs = new Connection();
       
        protected void Page_Load(object sender, EventArgs e)
        { 
           
        }

        protected void btnPatarticlesubmit_Click(object sender, EventArgs e)
        {
            bool check;
            LoginPage lg = new LoginPage();
           
            if(txtarticlecontentpatient.Value.Length<101||txtarticlecontentpatient.Value==null)
            {
                msglbl.Text = "Kindly Write proper article. i.e the length should be around 200 atleast.";

            }
            else
            {
                if(txtarticletitlepatient.Value.Length<5|| txtarticletitlepatient.Value.Length>100)
                {
                    msglbl.Text = "You are not giving a proper title. A title should contain 5 characters and atmost 100.";
                }
                else
                {
                    check=cs.AddArticle(LoginPage.uID, txtarticletitlepatient.Value.ToString(), txtarticlecontentpatient.Value.ToString());
                    if (check == true)
                    {
                        msglbl.CssClass = "msgs";
                        msglbl.CssClass += " text-success";
                      msglbl.Text = "Article Submitted";
                        txtarticlecontentpatient.Value = "";
                        txtarticletitlepatient.Value = "";
                    }
                    else
                    {
                        msglbl.Text = "Article Couldn't be submitted.";

                    }
                    
                }
            }
        }
    }
}