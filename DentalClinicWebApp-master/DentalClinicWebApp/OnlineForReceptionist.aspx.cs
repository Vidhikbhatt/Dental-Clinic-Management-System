using System;
using System.Data.SqlClient;
using System.Data;
using System.Net;
using System.Net.Mail;
using System.Web.UI.WebControls;

namespace DentalClinicWebApp
{
    public partial class OnlineForReceptionist : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SqlConnection sqlCon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\nishi\OneDrive\Documents\Patient.mdf;Integrated Security=True;Connect Timeout=30");
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("select * from OnlineAppTable ", sqlCon);
                DataTable dtbl = new DataTable();
                sqlDa.Fill(dtbl);
                OnlineForm.DataSource = dtbl;
                OnlineForm.DataBind();
           }

              

           
        }

        /*private static void SendEmail2(string smtpServer,string toEmail)
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
        
        protected void ClickAccept(object sender, EventArgs e)
        {
            /*var toEmail = ((GridViewCommandEventArgs)e).CommandArgument.ToString();
            string smtpServer = "smtp.office365.com";
            SendEmail2(smtpServer,toEmail);
            */
            Response.Write("<script>alert('sms send for appointment confirmation');</script>");
        }
        protected void ClickReject(object sender, EventArgs e)
        {
            /*var toEmail = ((GridViewCommandEventArgs)e).CommandArgument.ToString();
            string smtpServer = "smtp.office365.com";
            SendEmail2(smtpServer, toEmail);*/
            Response.Write("<script>alert('sms send for appointment confirmation');</script>");
        }
    }
}