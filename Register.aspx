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
       
        DataSet ds = new DataSet(); 

        protected void Page_Load(object sender, EventArgs e)
        {
           
            //con.Open();
            if (!IsPostBack)
            {
                usid.Enabled = false;
                GenerateID();
                System.Threading.Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo("hu-HU");
                RangeValidator1.MinimumValue = DateTime.Today.AddYears(-300).ToShortDateString();
                RangeValidator1.MaximumValue = DateTime.Today.AddYears(-18).ToShortDateString();
            }
        }
        void GenerateID()
        {
            con.Open();
            cmd = new SqlCommand("SELECT TOP 1 * FROM register order by id desc ",con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                int uid = Convert.ToInt32(sdr["id"].ToString().Substring(1, sdr["id"].ToString().Length - 1));

                usid.Text = "U" + (uid+1000);
            }
                con.Close();
            
        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            string strinsert;
            con.Open();
            strinsert = "Insert into register values('"+usid.Text+"','" + fname.Text + "','" + lname.Text + "','" + dob.Text + "','" +
                gender.SelectedValue.ToString() + "','" + phno.Text + "','" + pass.Text + "'," +
                "'" + flno.Text + "','" +
                stno.Text + "','" + lm.Text + "','" + city.Text + "','" + state.Text + "')";
            cmd = new SqlCommand(strinsert, con);
            cmd.ExecuteNonQuery();
            con.Close();
            GenerateID();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Your details are submitted successfully ')</script>");

        }
    }
}
