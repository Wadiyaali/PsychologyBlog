using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace webmaster
{

    public class Connection
    {

        public string cs = ConfigurationManager.ConnectionStrings["str"].ConnectionString;
        SqlConnection conne;SqlCommand cm1;
        public bool Adduser(string cat, string fn, string ln, string ph, string cn, string em, string pw)
        {
            bool val = false;
            try
            {

                SqlConnection conn = new SqlConnection(cs);
                conn.Open();
                SqlCommand cmd = new SqlCommand("sp_CreateAccount", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@c", cat);
                cmd.Parameters.AddWithValue("@fn", fn);
                cmd.Parameters.AddWithValue("@ln", ln);
                cmd.Parameters.AddWithValue("@ph", ph);
                cmd.Parameters.AddWithValue("@cn", cn);
                cmd.Parameters.AddWithValue("@em", em);
                cmd.Parameters.AddWithValue("@pw", pw);
                cmd.ExecuteNonQuery();
                conn.Close();
                val = true;



            }
            catch (Exception es)
            {
                val = false;
            }
            return val;
        }
        public bool addpsycho(string deg, string pro, string ins, string py, string enr, string em)
        {
            bool value = false;
            try
            {

                SqlConnection conn = new SqlConnection(cs);
                conn.Open();
                SqlCommand cmd2 = new SqlCommand("select UserID from Users where Email=@email", conn);
                cmd2.Parameters.AddWithValue("@email", em);
                int s = Convert.ToInt32(cmd2.ExecuteScalar());

                SqlCommand cmd = new SqlCommand("sp_AddPsy", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@uid", s);
                cmd.Parameters.AddWithValue("@deg", deg);
                cmd.Parameters.AddWithValue("@pro", pro);
                cmd.Parameters.AddWithValue("@ins", ins);
                cmd.Parameters.AddWithValue("@py", py);
                cmd.Parameters.AddWithValue("@enr", enr);

                cmd.ExecuteNonQuery(); conn.Close();
                value = true;

            }
            catch (Exception es)
            {
                value = false;
            }
            return value;
        } 
        public bool CNICcheck(string s)
        {
            bool check = false;
            SqlConnection conn = new SqlConnection(cs);
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select cnic from Users where CNIC=@cnic ", conn);
            cmd.Parameters.AddWithValue("@cnic", s);
            long k=Convert.ToInt64(cmd.ExecuteScalar());
            if(k>0)
            {
                check = false;
            }
            else
            {
                check = true;
            }
            conn.Close();
            return check;
     
        }
        public string Getname(int id)
        {
            conne = new SqlConnection(cs);
            conne.Open();
            SqlCommand cm = new SqlCommand("Select Fname+' '+Lname as Name from Users where UserId=@uid",conne);
            cm.Parameters.AddWithValue("@uid", id);
           string name= cm.ExecuteScalar() as string;
            conne.Close();
            return name;

        }
        public string GetArticle(int cardno, string ques)
        {
            ques = ques.ToLower();
            string Return = "";
            SqlConnection conn = new SqlConnection(cs);
            conn.Open();

            SqlCommand cmd = new SqlCommand("select ArticleID from Article order by ArticleID desc ", conn);
            int articleid = Convert.ToInt32(cmd.ExecuteScalar());
            SqlCommand cmdtitle;
            if (ques == "title")
            {
                try
                {

                    if (cardno == 1)
                    {
                        cmdtitle = new SqlCommand("select ArticleName from Article where ArticleID=@id", conn);
                        cmdtitle.Parameters.AddWithValue("@id", articleid);
                        Return = cmdtitle.ExecuteScalar().ToString();
                    }
                    else if (cardno == 2)
                    {
                        cmdtitle = new SqlCommand("select ArticleName from Article where ArticleID=@id", conn);
                        cmdtitle.Parameters.AddWithValue("@id", articleid - 1);
                        Return = cmdtitle.ExecuteScalar().ToString();
                    }
                    else if (cardno == 3)
                    {
                        cmdtitle = new SqlCommand("select ArticleName from Article where ArticleID=@id", conn);
                        cmdtitle.Parameters.AddWithValue("@id", articleid - 2);
                        Return = cmdtitle.ExecuteScalar().ToString();

                    }
                    else if (cardno == 4)
                    {
                        cmdtitle = new SqlCommand("select ArticleName from Article where ArticleID=@id", conn);
                        cmdtitle.Parameters.AddWithValue("@id", articleid - 3);
                        Return = cmdtitle.ExecuteScalar().ToString();
                    }
                }
                catch (Exception es)
                {

                    Return = "";
                }
            }
            else if (ques == "content")
            {
                try
                {

                    if (cardno == 1)
                    {
                        cmdtitle = new SqlCommand("select Content from Article where ArticleID=@id", conn);
                        cmdtitle.Parameters.AddWithValue("@id", articleid);
                        Return = cmdtitle.ExecuteScalar().ToString();
                    }
                    else if (cardno == 2)
                    {
                        cmdtitle = new SqlCommand("select Content from Article where ArticleID=@id", conn);
                        cmdtitle.Parameters.AddWithValue("@id", articleid - 1);
                        Return = cmdtitle.ExecuteScalar().ToString();
                    }
                    else if (cardno == 3)
                    {
                        cmdtitle = new SqlCommand("select Content from Article where ArticleID=@id", conn);
                        cmdtitle.Parameters.AddWithValue("@id", articleid - 2);
                        Return = cmdtitle.ExecuteScalar().ToString();
                    }
                    else if (cardno == 4)
                    {
                        cmdtitle = new SqlCommand("select Content from Article where ArticleID=@id", conn);
                        cmdtitle.Parameters.AddWithValue("@id", articleid - 3);
                        Return = cmdtitle.ExecuteScalar().ToString();
                    }
                }
                catch (Exception es)
                {

                    Return = "";
                }
               
            } conn.Close();

                return Return;
        }
        public bool EmailCheck(string s)
        {
            bool check = false;
            SqlConnection conn = new SqlConnection(cs);
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select Email from Users where email='"+s+"'", conn);
            //cmd.Parameters.AddWithValue("@cnic", s);
            int k = Convert.ToInt32(cmd.ExecuteNonQuery());
            if (k > 0)
            {
                check = false;
            }
            else
            {
                check = true;
            }
            conn.Close();
            return check;

        }
        public bool AddArticle(int id,string title, string content)
        {
            bool retu = false;
            try
            {
                conne = new SqlConnection(cs);
                conne.Open();
                cm1 = new SqlCommand("sp_AddArticlee", conne);

                cm1.CommandType = CommandType.StoredProcedure;
                
                cm1.Parameters.AddWithValue("@uid", id);
                cm1.Parameters.AddWithValue("@an", title);
                cm1.Parameters.AddWithValue("@con", content);
                cm1.ExecuteNonQuery();
                conne.Close();
                retu = true;
            
            }
            catch(Exception es)
            {
               
                retu = false;
            }
            return retu;
        }
        public bool BookApt(int pid, int psid, int cid, string sd, int ss)
        {
            bool booked = false;
            try
            {
                conne = new SqlConnection(cs);
                conne.Open();
                cm1 = new SqlCommand("sp_Apt", conne)
                {
                    CommandType = CommandType.StoredProcedure
                };
                cm1.Parameters.AddWithValue("@pid", pid);
                cm1.Parameters.AddWithValue("@psid", psid);
                cm1.Parameters.AddWithValue("@cid", cid);
                cm1.Parameters.AddWithValue("@sd", sd); //string given here, check
                cm1.Parameters.AddWithValue("@ss", ss);
                cm1.ExecuteNonQuery();
                booked = true;
                conne.Close();
            }
            catch (Exception es)
            {
                booked = false;
            }
            return booked;
        }
        public bool CheckAvailability(int psid, string sd, int ss)
        {
            bool avlbl = false;
            SqlConnection conn = new SqlConnection(cs);
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select * from SessionApt where PsychologistID=" + psid + "AND SessionDate='" + sd + "' AND SessionStart=" + ss + ";", conn);
            int k = Convert.ToInt32(cmd.ExecuteScalar());
            if (k > 0)
            {
                avlbl = false;
            }
            else
            {
                avlbl = true;
            }
            conn.Close();
            return avlbl;
        }

        public DataTable PsyList()
        {
            conne = new SqlConnection(cs);
            conne.Open();
            SqlCommand cmd = new SqlCommand("Select UserID, CONCAT(Fname,' ',Lname) as PsyName from Users where Category='Psychologist'", conne);
            DataTable dt = new DataTable();
            dt.Load(cmd.ExecuteReader());
            conne.Close();
            return dt;
        } //not r
        public DataTable ViewDisorders()
        {
            conne = new SqlConnection(cs);
            conne.Open();
            SqlCommand cmd = new SqlCommand("Select * from Disorder", conne);
            DataTable dt = new DataTable();
            dt.Load(cmd.ExecuteReader());
            conne.Close();
            return dt;
        } //not req
        public bool SaveCase(int pid, int sev, int epid)
        {
            try
            {
                conne = new SqlConnection(cs);
                conne.Open();
                SqlCommand cmd = new SqlCommand("Insert into ExpectedDisorder (PatientID,ExpectedID,Severity) values (@pid,@expe,@sev)", conne);
               
                cmd.Parameters.AddWithValue("@pid",pid);
                cmd.Parameters.AddWithValue("@expe", epid);
                cmd.Parameters.AddWithValue("@sev", sev);
                
                int added = cmd.ExecuteNonQuery();
                if (added > 0)
                {
                    return true;
                }
                else
                { return false; }
            }
            catch (Exception es)
            {
                return false;
            }
           
        }
        public int GetCaseID(int pid)
        {
            conne = new SqlConnection(cs);
            conne.Open();
            SqlCommand cmd = new SqlCommand("Select MAX(CaseID) from ExpectedDisorder where PatientID=" + pid, conne);
            int k = Convert.ToInt32(cmd.ExecuteScalar());
            return k;
        }
    }
    
    
}