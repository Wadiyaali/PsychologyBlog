using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace webmaster
{
    public partial class WebForm20 : System.Web.UI.Page
    {
        Connection cs = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(cs.cs);
            
                 
           conn.Open();
         SqlCommand cmd = new SqlCommand("select * from Article", conn);

            SqlCommand cmd2,cm;
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                for(int i=0;i< ds.Tables[0].Rows.Count;i++)
                { 
                   cmd2 = new SqlCommand("select  UserID from Article where ArticleID=@id", conn);
                    cmd2.Parameters.AddWithValue("@id", ds.Tables[0].Rows[i]["ArticleID"].ToString());
                    int k = Convert.ToInt32(cmd2.ExecuteScalar());
                    cm = new SqlCommand("Select (Fname+' '+Lname) from Users where UserID=@uID", conn);
                    cm.Parameters.AddWithValue("@uID", k);
                    string name = cm.ExecuteScalar().ToString();
                    var sb = new StringBuilder();
                    accord.RenderControl(new HtmlTextWriter(new StringWriter(sb)));

                    string s = sb.ToString();
                    accord.InnerHtml = s + "<details> <summary>" + ds.Tables[0].Rows[i]["ArticleName"].ToString()+"<svg class'control-icon control-icon-expand' width='24' height='24' role='presentation'> <use xmlns:xlink='http://www.w3.org/1999/xlink' xlink:href='#expand-more' /></svg><svg class='control-icon control-icon-close' width='24' height='24' role='presentation'><use xmlns:xlink='http://www.w3.org/1999/xlink' xlink:href='#close'/> </svg>"+ "<h3>By:  " + name +" </h3> </summary> <p> " + ds.Tables[0].Rows[i]["Content"].ToString() + "</p> </details>";


                }
            }
           conn.Close();
        }
    }
}