using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Net;
using System.Net.Mail;
namespace DentalClinicWebApp
{
    public partial class Scheduling : System.Web.UI.Page
    {
        //int pid = 0;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            // pid = Convert.ToInt32(Request.QueryString["PatientId"]?.ToString());
        }
        protected void SearchBtn(object sender, EventArgs e)
        {
            SqlConnection sqlCon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\nishi\OneDrive\Documents\Patient.mdf;Integrated Security=True;Connect Timeout=30");
            SqlCommand cmd = new SqlCommand("Select * from PatientAppTable where PatientId='" + int.Parse(txtPatientId.Text) + "'", sqlCon);
            sqlCon.Open();
            cmd.Connection = sqlCon;
            SqlDataReader srd = cmd.ExecuteReader();
            while (srd.Read())
            {
                txtFname.Text = srd.GetValue(1).ToString();
                txtLname.Text = srd.GetValue(2).ToString();
                txtEmail.Text = srd.GetValue(7).ToString();
            }
        }
        protected void BtnSchedule(object sender, EventArgs e)
        {

            SqlConnection sqlCon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\nishi\OneDrive\Documents\Patient.mdf;Integrated Security=True;Connect Timeout=30");
            //SqlCommand cmd = new SqlCommand("Insert into ScheduleTable1 (MyDate, TimeFrom, TimeTo,patientId) Values ('" + txtdob.Text+ "', '" + TextBox1.Text + "', '" + TextBox2.Text + "', " + txtPatientId.Text + "  )");
            SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM ScheduleTable1 Where MyDate='" + txtdob.Text + "' AND TimeFrom='" + TextBox1.Text + "'");
            sqlCon.Open();
            cmd.Connection = sqlCon;
            int checkExistingRecord = Convert.ToInt32(cmd.ExecuteScalar());
            sqlCon.Close();

            if (checkExistingRecord == 0)
            {
                SqlConnection sqlCon2 = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\nishi\OneDrive\Documents\Patient.mdf;Integrated Security=True;Connect Timeout=30");

                SqlCommand cmd2 = new SqlCommand("Insert into ScheduleTable1 (MyDate, TimeFrom, TimeTo,patientId) Values ('" + txtdob.Text + "', '" + TextBox1.Text + "', '" + TextBox2.Text + "', " + txtPatientId.Text + "  )");
                //SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM ScheduleTable1 Where MyDate=MyDate AND TimeFrom=TimeFrom");
                sqlCon2.Open();
                cmd2.Connection = sqlCon2;
                var result = cmd2.ExecuteNonQuery();
                sqlCon2.Close();
                if (result == 1)
                {
                    Response.Write("<script>alert('Appointment Schedule successful');</script>");
                    txtdob.Text = "";
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    txtPatientId.Text = " ";
                    txtdob.Focus();
                }

            }
            else
            {
                Response.Write("<script>alert('Appointment already existed');</script>");
            }

            //  SqlCommand cmd1 = new SqlCommand("SELECT CASE WHEN MyDate IS NOT NULL AND TimeFrom IS NOT NULL THEN NULL ELSE 'Data is present'END AS result FROM ScheduleTable1 ");
            //Response.Write("<script>alert('Appointment Already Present Reschedule it');</script>");
        }
       /* private static void SendEmail2(string smtpServer, string toEmail)
        {

            using (MailMessage mm = new MailMessage("nishidentalclinic@outlook.com", toEmail))
            {
                mm.Subject = "Appointment Mail";
                //mm.Bcc.Add(txtEmail.Text);
                string msg = "your appointment has been confirm";
                mm.Body = msg.ToString();
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = smtpServer;
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential("nishidentalclinic@outlook.com", @"Nishi123@@");
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;

                try
                {
                    smtp.Send(mm);
                    //ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email sent.');", true);
                }
                catch (Exception e1)
                {
                    Console.WriteLine(e1.Message);
                }
            }
        }*/
        protected void SendSms(object sender, EventArgs e)
        {
            //var toEmail = ((GridViewCommandEventArgs)e).CommandArgument.ToString();
            //string smtpServer = "smtp.office365.com";
            //SendEmail2(smtpServer, toEmail);
            Response.Write("<script>alert('Appointment confirmation Email send');</script>");
        }
    }
}
           
    


