using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DentalClinicWebApp
{
    public partial class UserLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }
        protected void Register_loadPage(object sender, EventArgs e)
        {
            Response.Redirect("SignUpForm.aspx");
        }
 
        protected void LoginEvent(object sender, EventArgs e)
        {
            String roles = String.Empty;
            if (RadioButton1.Checked)
            {
                roles = "Admin";
            }

            else
            {
                roles = "Staff";
            }
            //var connectionString = ConfigurationManager.ConnectionStrings["PatientInfoDb"].ToString();

            //SqlConnection con = new SqlConnection(connectionString);
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\nishi\OneDrive\Documents\Patient.mdf;Integrated Security=True;Connect Timeout=30");
            SqlCommand cmd = new SqlCommand("select * from Signup1Table where Email=@Email and Password=@Password and Role=@Role", con);
             cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
            cmd.Parameters.AddWithValue("@Role",roles);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            cmd.Connection = con;
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Open();
            int i = cmd.ExecuteNonQuery();

            con.Close();
            if (dt.Rows.Count > 0)
            {
                //var role = string.Empty;

                //foreach (DataRow row in dt.Rows)
                //{
                //    role = row["Role"].ToString();
                //}

                //Session["UserRole"] = role;

                //// In logout clear session, Session["UserRole"] = null;
                if (roles == "Admin")
                {
                    Response.Redirect("DeleteThisLater.aspx");
                }
            else
                {
                    Response.Redirect("WebForm1.aspx");
                }
                //Response.Redirect("DeleteThisLater.aspx");
            }
            else
            {
                Label1.Text = "Your username and Password is incorrect";
                Label1.ForeColor = System.Drawing.Color.Red;
            }

            

        }


    }
}