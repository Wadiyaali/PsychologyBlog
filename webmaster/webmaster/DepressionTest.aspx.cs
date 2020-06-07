using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webmaster
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        int severity;
        protected void Page_Load(object sender, EventArgs e)
        {
            severity = 0;
        }

        protected void btnTestSubmit_Click(object sender, EventArgs e)
        {
            int res = GetDepResult();
            if (res >= 21 || res <= 30)
            {
                lblResult.Text = "Your answers suggest that you are suffering from severe depression. We recommend you to schedule " +
                    "an appointment with your doctor or a mental health worker now. If you need help we strongly suggest that you reach " +
                    "out to a qualified mental health professional listed in our list of mental health resources. And remember, you are not alone.";
            }
            else if (res >= 14 && res <= 20)
            {
                lblResult.Text = "Your answers suggest that you are suffering from mild depression. You can reach out to our mental health experts" +
                    "anytime you feel like you need to talk. Aurora's services are always available for you. " +
                    "And remember, you are not alone. BREATHE";
            }
            else if (res > 0 && res < 14)
            {
                lblResult.Text = "Your answers suggest that you are suffering from low depression. You can reach out to our mental health experts" +
                    "anytime you feel like you need to talk. Aurora's services are always available for you. Give yourself some time and space whenever you feel like it. " +
                    "And remember, you are not alone.";
            }
        }
        public int GetDepResult()
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
            if (rbQ8b.Checked == true)
            {
                severity += 1;
            }
            if (rbQ8c.Checked == true)
            {
                severity += 2;
            }
            if (rbQ8d.Checked == true)
            {
                severity += 3;
            }
            if (rbQ9b.Checked == true)
            {
                severity += 1;
            }
            if (rbQ9c.Checked == true)
            {
                severity += 2;
            }
            if (rbQ9d.Checked == true)
            {
                severity += 3;
            }
            if (rbQ10b.Checked == true)
            {
                severity += 1;
            }
            if (rbQ10c.Checked == true)
            {
                severity += 2;
            }
            if (rbQ10d.Checked == true)
            {
                severity += 3;
            }
            return severity;
        }
    }
}