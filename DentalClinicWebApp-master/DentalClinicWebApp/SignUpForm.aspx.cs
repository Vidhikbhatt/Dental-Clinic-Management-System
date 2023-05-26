using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace DentalClinicWebApp
{
    public partial class SignUpForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSignup_Click(object sender, EventArgs e)  /*onclick event*/
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
            SqlConnection sqlCon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\nishi\OneDrive\Documents\Patient.mdf;Integrated Security=True;Connect Timeout=30");
            SqlCommand sqlComm = new SqlCommand("Insert into Signup1Table (Name,Email,Password,Role) Values ('" + txtName.Text+ "', '" + txtEmail.Text + "', '" + txtPassword.Text + "', '" + roles + "')");
            sqlComm.Connection = sqlCon;
            sqlCon.Open();
            int intUserInserted = Convert.ToInt32(sqlComm.ExecuteNonQuery());
            if (intUserInserted == 1)
            {
                Response.Write("<script>alert('data insertion successful');</script>");
                txtName.Text = "";
                txtEmail.Text = "";
                txtPassword.Text = " ";
                roles = " ";
                txtName.Focus();
            }
            sqlCon.Close();

        }
        
    }
}