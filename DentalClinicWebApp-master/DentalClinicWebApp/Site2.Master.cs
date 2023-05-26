using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DentalClinicWebApp
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void PatientInfo(object sender, EventArgs e)
        {

            Response.Redirect("~/PatientInfo.aspx");
        }
        protected void ExistingInfo(object sender, EventArgs e)
        {
            
                Response.Redirect("~/ExistingPatientDetail.aspx");          
        }
            
        protected void SchedulingOnline(object sender, EventArgs e)
        {
            Response.Redirect("~/OnlineForReceptionist.aspx");
        }
        protected void Scheduling(object sender, EventArgs e)
        {

            Response.Redirect("~/Scheduling.aspx");

        }
        protected void Treatment(object sender, EventArgs e)
        {

            Response.Redirect("~/VidhiTreatment.aspx");

        }
        protected void CaseTreatment(object sender, EventArgs e)
        {
            Response.Redirect("~/CaseHistory.aspx");
        }
        protected void Logout(object sender, EventArgs e)
        {
            Response.Redirect("~/UserLogin.aspx");
        }
    }
}