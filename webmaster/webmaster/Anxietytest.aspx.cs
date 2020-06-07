using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webmaster
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        int severity = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblResult.Text = "";
        }

        protected void btnTestSubmit_Click(object sender, EventArgs e)
        {
            lblResult.Text = "";
            int res = getResult();
            if (res < 14)
            {
                lblResult.Text += "Result: No Anxiety";
            }
            else if (res >= 14 && res < 21)
            {
                lblResult.Text += "Result: Mild Anxiety";
            }
            else if (res >= 21 && res <= 28)
            {
                lblResult.Text += "Result: Severe Anxiety";
            }
        }
        public int getResult()
        {
            severity = 0;
            if (rbQ1b.Checked == true)
            {
                severity += 1;
            }
            if (rbQ1c.Checked == true)
            {
                severity += 2;
            }
            if (rbQ1d.Checked == true)
            {
                severity += 3;
            }
            if (rbQ1e.Checked == true)
            {
                severity += 4;
            }
            if (rbQ2b.Checked == true)
            {
                severity += 1;
            }
            if (rbQ2c.Checked == true)
            {
                severity += 2;
            }
            if (rbQ2d.Checked == true)
            {
                severity += 3;
            }
            if (rbQ2e.Checked == true)
            {
                severity += 4;
            }
            if (rbQ3b.Checked == true)
            {
                severity += 1;
            }
            if (rbQ3c.Checked == true)
            {
                severity += 2;
            }
            if (rbQ3d.Checked == true)
            {
                severity += 3;
            }
            if (rbQ3e.Checked == true)
            {
                severity += 4;
            }
            if (rbQ4b.Checked == true)
            {
                severity += 1;
            }
            if (rbQ4c.Checked == true)
            {
                severity += 2;
            }
            if (rbQ4d.Checked == true)
            {
                severity += 3;
            }
            if (rbQ4e.Checked == true)
            {
                severity += 4;
            }
            if (rbQ5b.Checked == true)
            {
                severity += 1;
            }
            if (rbQ5c.Checked == true)
            {
                severity += 2;
            }
            if (rbQ5d.Checked == true)
            {
                severity += 3;
            }
            if (rbQ5e.Checked == true)
            {
                severity += 4;
            }
            if (rbQ6b.Checked == true)
            {
                severity += 1;
            }
            if (rbQ6c.Checked == true)
            {
                severity += 2;
            }
            if (rbQ6d.Checked == true)
            {
                severity += 3;
            }
            if (rbQ6e.Checked == true)
            {
                severity += 4;
            }
            if (rbQ7b.Checked == true)
            {
                severity += 1;
            }
            if (rbQ7c.Checked == true)
            {
                severity += 2;
            }
            if (rbQ7d.Checked == true)
            {
                severity += 3;
            }
            if (rbQ7e.Checked == true)
            {
                severity += 4;
            }
            return severity;
        }
    }
}