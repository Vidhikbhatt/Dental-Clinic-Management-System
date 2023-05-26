using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace DentalClinicWebApp
{
    public partial class OnlineAppointment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        /*protected void DropDownList1_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            string message =  DropDownList1.SelectedItem.Value;
            //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);
        }
        */

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            // string name = TextBox1.Text.Trim();
            // string email = TextBox2.Text.Trim();
            // string phone = TextBox3.Text.Trim();
            //DateTime appointmentDate = Convert.ToDateTime(TextBox4.Text);
            // string appointmentTime = DropDownList1.SelectedValue;
            // string message = TextBox6.Text.Trim();

            //var connectionString = ConfigurationManager.ConnectionStrings["PatientInfoDb"].ToString();

            //SqlConnection sqlCon = new SqlConnection(connectionString);
            SqlConnection sqlCon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\nishi\OneDrive\Documents\Patient.mdf;Integrated Security=True;Connect Timeout=30");
            //SqlCommand sqlComm = new SqlCommand("Insert into OnlineAppTable(Name, Email, Phone, AppointmentDate, AppointmentTime, Message) VALUES (@Name, @Email, @Phone, @AppointmentDate, @AppointmentTime, @Message)");
            SqlCommand sqlComm = new SqlCommand("Insert into OnlineAppTable(Name, Email, Phone, AppointmentDate, AppointmentTime, Message) VALUES ('" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "', '" + TextBox4.Text + "', '" + DropDownList1.Text + "', '" + TextBox6.Text + "')");
            sqlComm.Connection = sqlCon;
            sqlCon.Open();
            //sqlComm.Parameters.AddWithValue("@Name", name);
            //sqlComm.Parameters.AddWithValue("@Email", email);
            //sqlComm.Parameters.AddWithValue("@Phone", phone);
            //sqlComm.Parameters.AddWithValue("@AppointmentDate", appointmentDate);
            //sqlComm.Parameters.AddWithValue("@AppointmentTime", appointmentTime);
            //sqlComm.Parameters.AddWithValue("@Message", message);
            sqlComm.ExecuteNonQuery();
            lblMessage.Text = "We will confirm your appointment soon.";

            /* int intUserInserted = Convert.ToInt32(sqlComm.ExecuteNonQuery());
             if (intUserInserted == 1)
             {
                 Response.Write("<script>alert('data insertion successful');</script>");
                 TextBox1.Text = " ";
                 TextBox2.Text = " ";
                 TextBox3.Text = " ";
                 //String ap = appointmentDate.ToString();
                // DateTime? myNullableDateTime = null;
                 DropDownList1.SelectedValue = "";
                 TextBox6.Text = " ";
                 TextBox1.Focus();
             }*/
            sqlCon.Close();
        }


    }
}




   
