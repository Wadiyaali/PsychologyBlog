using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webmaster
{
    public partial class psychologistmaster : System.Web.UI.MasterPage
    {
        Connection cs = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = cs.Getname(LoginPage.uID);
            txtname.InnerText = " " + name;
            mainhead.InnerHtml = "<strong> Welcome " + name + " </strong>";
        }
    }
}