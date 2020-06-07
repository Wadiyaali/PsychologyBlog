using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webmaster
{
    public partial class WebForm16 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        Connection cs = new Connection();
        protected void btnPatarticlesubmit_Click(object sender, EventArgs e)
        {
            bool check;
            if (txtarticlecontentpsycho.Value.Length < 101 || txtarticlecontentpsycho.Value == null)
            {
                msglbl.Text = "Kindly Write proper article. i.e the length should be around 200 atleast.";

            }
            else
            {
                if (txtarticletitlepsycho.Value.Length < 5 || txtarticletitlepsycho.Value.Length > 100)
                {
                    msglbl.Text = "You are not giving a proper title. A title should contain 5 characters and atmost 100.";
                }
                else
                {
                    check = cs.AddArticle(LoginPage.uID, txtarticletitlepsycho.Value.ToString(), txtarticlecontentpsycho.Value.ToString());
                    if (check == true)
                    {
                        msglbl.CssClass = "msgs";
                        msglbl.CssClass += " text-success";
                        msglbl.Text = "Article Submitted";
                        txtarticlecontentpsycho.Value = "";
                        txtarticletitlepsycho.Value = "";
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