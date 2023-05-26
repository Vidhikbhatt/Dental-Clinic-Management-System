using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DentalClinicWebApp
{
    public partial class ExistingPatientDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                BindGridView();
            }
        }
        private void BindGridView()
        {

            //var connectionString = ConfigurationManager.ConnectionStrings["PatientInfoDb"].ToString();

            //SqlConnection sqlCon = new SqlConnection(connectionString);
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\nishi\OneDrive\Documents\Patient.mdf;Integrated Security=True;Connect Timeout=30");
            SqlCommand cmd = new SqlCommand("SELECT * FROM PatientAppTable", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string searchKeyword = txtfname.Text.Trim() ;  
            

            if (!string.IsNullOrEmpty(searchKeyword))
            {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\nishi\OneDrive\Documents\Patient.mdf;Integrated Security=True;Connect Timeout=30");
                SqlCommand cmd = new SqlCommand(" SELECT * FROM PatientAppTable WHERE FirstName LIKE '%' + @SearchKeyword + '%' OR PhoneNo LIKE '%' + @SearchKeyword + '%' OR DOB LIKE '%' + @SearchKeyword + '%' ");
                cmd.Parameters.AddWithValue("@SearchKeyword", searchKeyword);
                
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                cmd.Connection = con;
                DataTable dt = new DataTable();
                con.Open();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                con.Close();
            }
            else
            {
                BindGridView();
            }
        }
        protected void btnView_Click(object sender, EventArgs e)
        {
            var connectionString = ConfigurationManager.ConnectionStrings["PatientInfoDb"].ToString();
            //SqlConnection sqlCon = new SqlConnection();
            SqlConnection sqlCon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\nishi\OneDrive\Documents\Patient.mdf;Integrated Security=True;Connect Timeout=30");
            SqlDataAdapter SQLAdapter = new SqlDataAdapter("select * from PatientAppTable", sqlCon);
            DataTable DT = new DataTable();
            SQLAdapter.Fill(DT);
            GridView1.DataSource = DT;
            GridView1.DataBind();
        }
        protected void btnEdit_Click(object sender, EventArgs e)
        {

        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EditButton")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[index];
                Response.Redirect("~/PatientInfo.aspx?PatientId=" + row.Cells[0].Text);
            }
        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            this.BindGridView();
        }



    }
}