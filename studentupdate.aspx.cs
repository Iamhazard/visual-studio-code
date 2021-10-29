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
    public partial class studentupdate : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("update tbstudent set StudentName=@StudentName, Address=@Address, Phone=@Phone, Email=@Email, Class=@Class, Gender=@Gender, DOB=@DOB where StudentID=@StudentID");
            cmd.Parameters.AddWithValue("@StudentName", txtStudentName.Text);
            cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
            cmd.Parameters.AddWithValue("@Phone", txtPhone.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@Class", txtClass.Text);
            cmd.Parameters.AddWithValue("@Gender", txtGender.Text);
            cmd.Parameters.AddWithValue("@DOB", txtDOB.Text);
            cmd.Parameters.AddWithValue("@StudentID", txtStudentID.Text);
            //link database and code
            cmd.Connection = conn;
            //run the sql code in server
            int ans = cmd.ExecuteNonQuery();
            if (ans > 0)
            {
                Response.Write("Record Updated");
            }
            else
            {
                Response.Write("Record updating fail");

            }
        }
    }
}