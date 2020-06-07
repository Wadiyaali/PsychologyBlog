using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webmaster
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        Connection cs = new Connection();
        protected void btnWrtrticlesubmit_Click(object sender, EventArgs e)
        {
            bool check;
            if (txtarticlecontentwriter.Value.Length < 101 || txtarticlecontentwriter.Value == null)
            {
                msglbl.Text = "Kindly Write proper article. i.e the length should be around 200 atleast.";

            }
            else
            {
                if (txtarticletitlewriter.Value.Length < 5 || txtarticletitlewriter.Value.Length > 100)
                {
                    msglbl.Text = "You are not giving a proper title. A title should contain 5 characters and atmost 100.";
                }
                else
                {
                    check = cs.AddArticle(LoginPage.uID, txtarticletitlewriter.Value.ToString(), txtarticlecontentwriter.Value.ToString());
                    if (check == true)
                    {
                        msglbl.CssClass = "msgs";
                        msglbl.CssClass += " text-success";

                        msglbl.Text = "Article Submitted";
                        txtarticlecontentwriter.Value = "";
                        txtarticletitlewriter.Value = "";
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