using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace INDWb
{
    public partial class evenodd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCheck_Click(object sender, EventArgs e)
        {
            int num = Convert.ToInt32(txtnumber.Text);
            if(num%2==0)
            {

                Response.Write("<script>alert('even number');</script>");
            }
            else
            {
                Response.Write("<script>alert('odd number');</script>");
            }
        }

        protected void txtnumber_TextChanged(object sender, EventArgs e)
        {

        }
    }
}