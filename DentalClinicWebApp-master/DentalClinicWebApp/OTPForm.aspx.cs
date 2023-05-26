using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net;
using System.Data;
using System.Collections.Specialized;
namespace DentalClinicWebApp
{
    public partial class OTPForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void VerifyCode(object sender, EventArgs e)
        {
            if (txtOtp.Text == Session["otp"].ToString())
            {
                Panel1.Visible = false;
                Label3.Text = "Your mobile number hase been verify successfully- Thanks";
            }
            else
            {
               
                Label3.Text = "Otp number is not correct please verify it.";
                Panel1.Visible = true;
            }
           


        }
    }
}