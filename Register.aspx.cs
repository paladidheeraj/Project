using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace Project
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"server=DESKTOP-M84SQ1E\SQLEXPRESS;Integrated Security=SSPI;database=project");
        SqlCommand cmd;
       
        DataSet ds = new DataSet(); //

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            if (!IsPostBack)
            {
                System.Threading.Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo("hu-HU");
                RangeValidator1.MinimumValue = DateTime.Today.AddYears(-300).ToShortDateString();
                RangeValidator1.MaximumValue = DateTime.Today.AddYears(-18).ToShortDateString();
            }
        }
        protected void lnkpickdate_Click(object sender, EventArgs e)
        {
           // Calendar1.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            //dob.Text = Calendar1.SelectedDate.ToLongDateString();

            // Calendar1.Visible = false;
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            //Session["llname"] = lname.Text;
            //Session["pphno"] = phno.Text;
            /*
            if (fname.Text == "" || lname.Text == "" || phno.Text == "" || pass.Text == "")
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Please update the highlighted mandatory field(s) ')</script>");
            }
            */
            string strinsert;
            strinsert = "Insert into register values('" + fname.Text + "','" + lname.Text + "','" + dob.Text + "','" +
                gender.SelectedValue.ToString() + "','" + phno.Text + "','" + pass.Text + "'," +
                "'" + flno.Text + "','" +
                stno.Text + "','" + lm.Text + "','" + city.Text + "','" + state.Text + "')";
            cmd = new SqlCommand(strinsert, con);
            cmd.ExecuteNonQuery();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Your details are submitted successfully ')</script>");
            con.Close();
            DataClear();
            //Response.Redirect("AddEvent.aspx");
        }
        public void DataClear()
        {

        }
    }
}