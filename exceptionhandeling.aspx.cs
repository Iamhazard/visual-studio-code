using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace INDWb
{
    public partial class exceptionhandeling : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDivide_Click(object sender, EventArgs e)
        {
            try
            {
                int a = Convert.ToInt32(txtv1.Text);
                int b = Convert.ToInt32(txtv2.Text);
                int c = a / b;
                Response.Write("quotient is " + c);
            }
            catch (Exception ex)
            {
                Response.Write("Error occur! resaon is " +ex.Message);
            }
        }
    }
}