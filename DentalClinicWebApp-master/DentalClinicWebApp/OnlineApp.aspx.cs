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
    public partial class OnlineApp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text.Trim();
            string email = TextBox2.Text.Trim();
            string phone = TextBox3.Text.Trim();
            DateTime appointmentDate = Convert.ToDateTime(TextBox4.Text);
            string appointmentTime = DropDownList1.SelectedValue;
            string message = TextBox6.Text.Trim();
            SqlConnection sqlCon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\nishi\OneDrive\Documents\OnlineAppointmentDB.mdf;Integrated Security=True;Connect Timeout=30");
            SqlCommand sqlComm = new SqlCommand("Insert into OnlineAppointmentTable (Name, Email, Phone, AppointmentDate, AppointmentTime, Message) VALUES (@Name, @Email, @Phone, @AppointmentDate, @AppointmentTime, @Message)");
            sqlComm.Connection = sqlCon;
            sqlCon.Open();
            sqlComm.Parameters.AddWithValue("@Name", name);
            sqlComm.Parameters.AddWithValue("@Email", email);
            sqlComm.Parameters.AddWithValue("@Phone", phone);
            sqlComm.Parameters.AddWithValue("@AppointmentDate", appointmentDate);
            sqlComm.Parameters.AddWithValue("@AppointmentTime", appointmentTime);
            sqlComm.Parameters.AddWithValue("@Message", message);
            sqlComm.ExecuteNonQuery();
            lblMessage.Text = "We will confirm your appointment soon.";
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }
    }
}