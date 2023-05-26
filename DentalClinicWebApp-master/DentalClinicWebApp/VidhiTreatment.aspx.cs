using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace DentalClinicWebApp
{
    public partial class VidhiTreatment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {

            SqlConnection sqlCon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\nishi\OneDrive\Documents\Patient.mdf;Integrated Security=True;Connect Timeout=30");

            SqlCommand cmd = new SqlCommand("Select * from PatientAppTable where PatientId='" + int.Parse(TextBox5.Text) + "'", sqlCon);
            sqlCon.Open();
            cmd.Connection = sqlCon;
            SqlDataReader srd = cmd.ExecuteReader();
            while (srd.Read())
            {
                TextBox6.Text = srd.GetValue(1).ToString(); //Name
                TextBox7.Text = srd.GetValue(9).ToString();  //history
                TextBox8.Text = srd.GetValue(10).ToString(); //allergy
            }
            srd.Close();
            sqlCon.Close();

        }
        protected void btnInsert_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\nishi\OneDrive\Documents\Patient.mdf;Integrated Security=True;Connect Timeout=30");
            SqlCommand sqlComm = new SqlCommand("Insert into TreatmentTable (TreatName,Complaint,DrugUse,PatientId) Values ('" + TextBox2.Text + "', '" + TextBox3.Text + "', '" + TextBox4.Text + "', '" + TextBox5.Text + "')");
            sqlComm.Connection = con;
            con.Open();
            sqlComm.ExecuteNonQuery();

            int intUserInserted = Convert.ToInt32(sqlComm.ExecuteNonQuery());
            if (intUserInserted == 1)        
            {
           
                Response.Write("<script>alert('data insertion successful');</script>");
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = " ";
                TextBox2.Focus();
            }
            con.Close();
        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int PatientId = int.Parse(TextBox5.Text);
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\KEYUR PATEL\Documents\NewPatient.mdf;Integrated Security=True;Connect Timeout=30");
            SqlCommand sqlComm = new SqlCommand("Delete from TreatmentTable " + " where PatientId = @Id");
            sqlComm.Parameters.AddWithValue("@Id", PatientId);
            sqlComm.Connection = con;
            con.Open();
            int rowsAffected = sqlComm.ExecuteNonQuery();
            con.Close();
            if (rowsAffected > 0)
            {
                // record was deleted successfully
                Response.Redirect("TreatmentRecord.aspx"); // redirect to the Customers page or another appropriate page
            }
        }

    }

    }