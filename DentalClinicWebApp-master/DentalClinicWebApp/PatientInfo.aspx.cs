using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace DentalClinicWebApp
{
    public partial class PatientInfo : System.Web.UI.Page
    {
        String gender = String.Empty;
        int pid=0;
        protected void Page_Load(object sender, EventArgs e)
        {
            pid = Convert.ToInt32(Request.QueryString["PatientId"]?.ToString());
           

            if (!IsPostBack)
            {
                BindTextBoxvalues();

            }

        }
        private void BindTextBoxvalues()
        {

            SqlConnection sqlCon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\nishi\OneDrive\Documents\Patient.mdf;Integrated Security=True;Connect Timeout=30");
            SqlCommand sqlComm = new SqlCommand("Select * from PatientAppTable where PatientId=" + pid, sqlCon);
            sqlComm.Connection = sqlCon;
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(sqlComm);
            da.Fill(dt);
            sqlCon.Open();
            if (dt.Rows.Count > 0)
            {
                txtpId.Text = dt.Rows[0][0].ToString();
                txtfname.Text = dt.Rows[0][1].ToString();
                txtlname.Text = dt.Rows[0][2].ToString();
                txtdob.Text = dt.Rows[0][3].ToString();
                txtAge.Text = dt.Rows[0][4].ToString();
                //RadioButton1 = dt.Rows[0][5].ToString();
                gender = dt.Rows[0][5].ToString();
                txtPhn.Text = dt.Rows[0][6].ToString();
                txtEmail.Text = dt.Rows[0][7].ToString();
                txtAddress.Text = dt.Rows[0][8].ToString();
                txtMedicalH.Text = dt.Rows[0][9].ToString();
                txtAllergy.Text = dt.Rows[0][10].ToString();
                txtPTV.Text = dt.Rows[0][11].ToString(); 
                // use txtpId.Text here
            }
            else
            {
                // handle the case where the DataTable is empty
                Console.Write("Else");
            }


            sqlCon.Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            String gender = String.Empty;
            if (RadioButton1.Checked)
            {
                gender = "Male";
            }
            else if (RadioButton2.Checked)
            {
                gender = "Female";
            }
            else
            {
                gender = "Other";
            }          
            SqlConnection sqlCon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\nishi\OneDrive\Documents\Patient.mdf;Integrated Security=True;Connect Timeout=30");
            SqlCommand sqlComm = new SqlCommand("Insert into PatientAppTable (FirstName,LastName,DOB,Age,Gender,PhoneNo,EmailId,Address,MedicalHistory,Allergy,PurposeToVisit) Values ('" + txtfname.Text + "', '" + txtlname.Text + "', '" + txtdob.Text + "', '" + txtAge.Text + "', '" + gender + "', '" + txtPhn.Text + "', '" + txtEmail.Text + "', '" + txtAddress.Text + "', '" + txtMedicalH.Text + "', '" + txtAllergy.Text + "', '" + txtPTV.Text + "')");
            sqlComm.Connection = sqlCon;
            sqlCon.Open();
            int intUserInserted = Convert.ToInt32(sqlComm.ExecuteNonQuery());
            if (intUserInserted == 1)
            {
                Response.Write("<script>alert('data insertion successful');</script>");
                txtpId.Text = "";
                txtfname.Text = "";
                txtlname.Text = " ";
                txtdob.Text = " ";
                txtAge.Text = " ";
                gender = " ";
                txtPhn.Text = " ";
                txtEmail.Text = " ";
                txtAddress.Text = " ";
                txtMedicalH.Text = " ";
                txtAllergy.Text = " ";
                txtPTV.Text = " ";
                txtfname.Focus();
            }
            sqlCon.Close();
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
           
            SqlConnection sqlCon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\nishi\OneDrive\Documents\Patient.mdf;Integrated Security=True;Connect Timeout=30");
            SqlCommand sqlComm = new SqlCommand("Update PatientAppTable set FirstName='" + txtfname.Text + "', LastName='" + txtlname.Text + "', DOB='" + txtdob.Text + "',Age='" + txtAge.Text + "', Gender='" + "', PhoneNo= ' " + txtPhn.Text + "',EmailId= '" + txtEmail.Text + "',Address ='" + txtAddress.Text + "',MedicalHistory= '" + txtMedicalH.Text + "',Allergy= '" + txtAllergy.Text + "',PurposeToVisit= '" + txtPTV.Text + "' where PatientId=" + txtpId.Text, sqlCon);
            sqlComm.Connection = sqlCon;
            sqlCon.Open();
            int result = sqlComm.ExecuteNonQuery();
            sqlCon.Close();
            if (result == 1)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "ShowSuccess", "javascript:alert('Record Updated Successfully');", true);
            }
            Response.Redirect("ExistingPatientDetail.aspx");
        }
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ExistingPatientDetail.aspx");
        }
    

      }
}



