using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DentalClinicWebApp
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Page_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReceptionistAppointment.aspx");
        }
    }
}