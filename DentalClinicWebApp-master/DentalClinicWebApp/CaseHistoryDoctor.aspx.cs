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
    public partial class CaseHistoryDoctor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string searchKeyword = txtId.Text.Trim();
            if (!string.IsNullOrEmpty(searchKeyword))
            {
                BindGridView(searchKeyword);
            }
            else
            {
                BindGridView("");
            }
        }
        private void BindGridView(string searchKeyword)
        {
            // Establish a connection to the database
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\nishi\OneDrive\Documents\Patient.mdf;Integrated Security=True;Connect Timeout=30");

            // Write the join query to fetch data from the two tables
            string query = "SELECT TreatmentTable.TreatName, TreatmentTable.Complaint, TreatmentTable.DrugUse, PatientAppTable.FirstName, PatientAppTable.MedicalHistory, PatientAppTable.Allergy FROM TreatmentTable INNER JOIN PatientAppTable ON TreatmentTable.PatientId = PatientAppTable.PatientId";
            if (!string.IsNullOrEmpty(searchKeyword))
            {
                query += " WHERE PatientAppTable.PatientId LIKE '%' + @SearchKeyword + '%'";
            }
            // Create a SqlDataAdapter object to fetch data from the database
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            if (!string.IsNullOrEmpty(searchKeyword))
            {
                da.SelectCommand.Parameters.AddWithValue("@SearchKeyword", searchKeyword);
            }
            // Create a DataTable object to hold the fetched data
            DataTable dt = new DataTable();

            // Fill the DataTable object with the fetched data
            da.Fill(dt);
            // Bind the DataTable object to the GridView control
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}
