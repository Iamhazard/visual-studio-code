using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace INDWb
{
    public partial class showall : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //database connection
            SqlConnection conn = new SqlConnection("server=LAPTOP-MDP69GE6;database=IndreniBCADB;user id=sa;password=kamal");
            conn.Open();

            //sql code to insert
            SqlCommand cmd = new SqlCommand("select * from tbStudent");
            cmd.Connection=conn;
            SqlDataReader rdr;
            rdr = cmd.ExecuteReader();

            DataTable dt = new DataTable();
            dt.Load(rdr);

            GridView1.DataSource = dt;
            GridView1.DataBind();




        }
    }
}