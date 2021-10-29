using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//for saveing and reriving form database purpose
using System.Data.SqlClient;
using System.Data;
namespace INDWb
{
    public partial class studentinsert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtPhone_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //database connection
            SqlConnection conn = new SqlConnection("server=LAPTOP-MDP69GE6;database=IndreniBCADB;integrated security=true;");
            conn.Open();

            //sql code to insert
            SqlCommand cmd = new SqlCommand("insert into tbstudent(StudentName, Address, Phone, Email, Class, Gender, DOB) values (@StudentName, @Address, @Phone, @Email, @Class, @Gender, @DOB)");
            cmd.Parameters.AddWithValue("@StudentName", txtStudentName.Text);
            cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
            cmd.Parameters.AddWithValue("@Phone", txtPhone.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@Class", txtClass.Text);
            cmd.Parameters.AddWithValue("@Gender", txtGender.Text);
            cmd.Parameters.AddWithValue("@DOB", txtDOB.Text);
            //link database and code
          cmd.Connection = conn;
            //run the sql code in server
            int ans = cmd.ExecuteNonQuery();
            if(ans>0)
            {
                Response.Write("Record Saved");
            }
            else
            {
                Response.Write("Record Saving fail");

            }
        }
    }
}