using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DentalClinicWebApp
{
    public partial class DoctorSite3 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Treatment(object sender, EventArgs e)
        {

            Response.Redirect("~/VidhiTreatmentDoctor.aspx");

        }
        protected void CaseHistory(object sender, EventArgs e)
        {
            Response.Redirect("~/CaseHistoryDoctor.aspx");
        }
        protected void Logout(object sender, EventArgs e)
        {
            Response.Redirect("~/UserLogin.aspx");
        }
    }
}