using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webmaster
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Connection cs = new Connection();
        string content;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                card1title.InnerHtml = cs.GetArticle(1, "title");
                content = cs.GetArticle(1, "content");
                card1content.InnerHtml = content.Substring(0, 100) + "...";
                cardt2.InnerHtml = cs.GetArticle(2, "title");
                content = cs.GetArticle(2, "content");
                cardc2.InnerHtml = content.Substring(0, 100) + "...";
                cardt3.InnerHtml = cs.GetArticle(3, "title");
                content = cs.GetArticle(3, "content");
                cardc3.InnerHtml = content.Substring(0, 100) + "...";
                cardt4.InnerHtml = cs.GetArticle(4, "title");
                content = cs.GetArticle(4, "content");
                cardc4.InnerHtml = content.Substring(0, 100) + "...";
            }
            catch (Exception es)
            {
                ArgumentOutOfRangeException ef=new ArgumentOutOfRangeException();
                if(es.Equals(ef))
                {

                }
            }
        }
    }
} 