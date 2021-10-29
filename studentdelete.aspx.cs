using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace INDWb
{
    public partial class studentdelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //database connection
            SqlConnection conn = new SqlConnection("server=LAPTOP-MDP69GE6;database=IndreniBCADB;integrated security=true;");
            conn.Open();

            //sql code to insert
            SqlCommand cmd = new SqlCommand("delete from tbStudent where StudentID=@StudentID");
           
            cmd.Parameters.AddWithValue("@StudentID", txtStudentID.Text);
            //link database and code
            cmd.Connection = conn;
            //run the sql code in server
            int ans = cmd.ExecuteNonQuery();
            if (ans > 0)
            {
                Response.Write("Record Deleted");
            }
            else
            {
                Response.Write("Record deleting fail");

            }
        }
    }
}