using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace webmaster
{
    public partial class LoginPage : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        Connection cs = new Connection();
       public string emai, pass;
        public static int uID;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        public int GetID(string s)
        {
            int id;
            conn = new SqlConnection(cs.cs);
            conn.Open();
            cmd = new SqlCommand("Select UserID from Users where Email=@email",conn);
            cmd.Parameters.AddWithValue("@email", s);
            id=Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return id;
                
        }
        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            emai = txtusername.Value.ToString();
            pass = txtpassword.Value.ToString();
            uID = GetID(emai);
            conn = new SqlConnection(cs.cs);
            emai = txtusername.Value.ToString().ToLower().ToString();

            try
            {
                conn.Open();
                cmd = new SqlCommand("Select Pass from Users where Email=@email", conn);
                cmd.Parameters.AddWithValue("@email", emai);
                string res = cmd.ExecuteScalar() as string;

                if (!(string.IsNullOrEmpty(res)))
                {

                    if (pwcheck(res) == true)
                    {
                        txtusername.Value = "";
                        txtpassword.Value = "";
                        Label1.Enabled = false;
                        Session.Clear();
                        if (txtDDlogin.SelectedValue.ToString().ToLower() == "writer")
                        {
                            LoginPage lg = new LoginPage();
                            Response.Write("<script>");
                            Response.Write("window.open('HomepageWriter.aspx','_self')");
                            Response.Write("</script>");
                        }
                        else if(txtDDlogin.SelectedValue.ToString().ToLower() == "psycho")
                        {
                            LoginPage lg = new LoginPage();
                            Response.Write("<script>");
                            Response.Write("window.open('Homepagepsychologist.aspx','_self')");
                            Response.Write("</script>");
                        }
                        else if(txtDDlogin.SelectedValue.ToString().ToLower() == "pat")
                        {
                            LoginPage lg = new LoginPage();
                            Response.Write("<script>");
                            Response.Write("window.open('HomepagePatient.aspx','_self')");
                            Response.Write("</script>");
                        }
                    }
                    else
                    {
                        Label1.Enabled = true;
                        Label1.Text = "Password doesn't match";
                    }
                }
                else
                {
                    Label1.Enabled = true;
                    Label1.Text = "Username doesn't exist.";
                }
                conn.Close();
            }
            catch (Exception es)
            {
                Response.Write("error :" + es);
            }

        }

        protected void Lginbtn_Click(object sender, EventArgs e)
        {
            emai = txtusername.Value.ToString();
            pass = txtpassword.Value.ToString();
            uID = GetID(emai);
            conn = new SqlConnection(cs.cs);
            emai = txtusername.Value.ToString().ToLower().ToString();


                conn.Open();
            try
            {
                cmd = new SqlCommand("Select Pass from Users where Email=@email", conn);
                cmd.Parameters.AddWithValue("@email", emai);
                string res = cmd.ExecuteScalar() as string;
               SqlCommand c1 = new SqlCommand("Select Category from Users where Email=@email", conn);
                c1.Parameters.AddWithValue("@email", emai);
                string cat = c1.ExecuteScalar() as string;
                if (!(string.IsNullOrEmpty(res)))
                {

                    if (pwcheck(res) == true)
                    {
                        txtusername.Value = "";
                        txtpassword.Value = "";
                        Label1.Enabled = false;
                        Session.Clear();
                        if (txtDDlogin.SelectedValue.ToString().ToLower() == "writer"&&cat=="Writer")
                        {
                            Response.Write("<script>");
                            Response.Write("window.open('HomepageWriter.aspx','_self')");
                            Response.Write("</script>");
                        }
                        else if (txtDDlogin.SelectedValue.ToString().ToLower() == "psycho" && cat == "Psychologist")
                        {
                            
                            Response.Write("<script>");
                            Response.Write("window.open('Homepagepsychologist.aspx','_self')");
                            Response.Write("</script>");
                        }
                        else if (txtDDlogin.SelectedValue.ToString().ToLower() == "pat" && cat == "Patient")
                        {
                          
                            Response.Write("<script>");
                            Response.Write("window.open('HomepagePatient.aspx','_self')");
                            Response.Write("</script>");
                        }
                    }
                    else
                    {
                        Label1.Enabled = true;
                        Label1.Text = "Password doesn't match";
                    }
                }
                else
                {
                    Label1.Enabled = true;
                    Label1.Text = "Username doesn't exist.";
                }
                conn.Close();
            }
            catch (Exception es)
            {
                Response.Write("error :" + es);
            }

        }

        public bool pwcheck(string s)
        {
            bool ret = true;
            if (s == txtpassword.Value.ToString())
            {

            }
            else
            {
                ret = false;
            }
            return ret;
        }


    }
   
}
