using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class UserHome2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"server=DESKTOP-M84SQ1E\SQLEXPRESS;Integrated Security=SSPI;database=project");
        SqlCommand cmd;
        //SqlDataAdapter da;
        DataSet ds = new DataSet();
        SqlDataReader dtrreg;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            if (!IsPostBack)
            {
                MainView.ActiveViewIndex = 0;
                System.Threading.Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo("hu-HU");
                RangeValidator1.MinimumValue = DateTime.Today.AddYears(-300).ToShortDateString();
                RangeValidator1.MaximumValue = DateTime.Today.AddYears(-18).ToShortDateString();
                fname.Enabled = false;
                lname.Enabled = false;
                dob.Enabled = false;
                phno.Enabled = false;
                uid.Enabled = false;
                pass.Enabled = false;
                flno.Enabled = false;
                stno.Enabled = false;
                lm.Enabled = false;
                city.Enabled = false;
                state.Enabled = false;
               
                male.Enabled = false;
                female.Enabled = false;
                
                Save.Enabled = false;
                Reset.Enabled = false;
            }
        }

        protected void rquo_Click(object sender, EventArgs e)
        {

            MainView.ActiveViewIndex = 0;
        }

        protected void vquo_Click(object sender, EventArgs e)
        {

            MainView.ActiveViewIndex = 1;
        }

        protected void vpro_Click(object sender, EventArgs e)
        {
           
            MainView.ActiveViewIndex = 2;
            cmd = new SqlCommand("select * from register where uid=1010", con);
            dtrreg = cmd.ExecuteReader();
            if(dtrreg.Read())
            {
                fname.Text = dtrreg["fname"].ToString();
                lname.Text = dtrreg["lname"].ToString();
                dob.Text = dtrreg["dob"].ToString();
                string gen;
                gen= dtrreg["gender"].ToString().ToLower();
                if(gen=="male")
                {
                    male.Enabled = true;
                    male.Selected = true;
                }
                else
                {
                    female.Enabled = true;
                    female.Selected = true;
                }
                phno.Text = dtrreg["phno"].ToString();
                uid.Text = dtrreg["uid"].ToString();
                pass.Text = dtrreg["pass"].ToString();
                flno.Text = dtrreg["flno"].ToString();
                stno.Text = dtrreg["stno"].ToString();
                lm.Text = dtrreg["lm"].ToString();
                city.Text = dtrreg["city"].ToString();
                state.Text = dtrreg["state"].ToString();
                con.Close();
                dtrreg.Close();
            }
        }
        protected void logout_Click(object sender, EventArgs e)
        {
            MainView.ActiveViewIndex = 3;
        }

        protected void Save_Click(object sender, EventArgs e)
        {
            /*
            dob.CausesValidation =true;
            phno.CausesValidation = true;
            pass.CausesValidation = true;
            */
            new SqlCommand("update register set dob='" + dob.Text + "',gender='" + gender.SelectedValue.ToString() + "',phno='" + phno.Text + "',pass='" + pass.Text + "',flno='" + flno.Text + "',stno='" + stno.Text + "',lm='" + lm.Text + "',city='" + city.Text + "',state='" + state.Text + "' where uid=" + uid.Text, con).ExecuteNonQuery();
            con.Close();
            //dtrreg.Close();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Your edited details are saved and submitted successfully')</script>");

        }
        protected void Reset_Click(object sender, EventArgs e)
        {
            /*
            dob.CausesValidation = false;
            phno.CausesValidation = false;
            pass.CausesValidation = false;
            */
            cmd = new SqlCommand("select * from register where uid=1010", con);
            dtrreg = cmd.ExecuteReader();
            if (dtrreg.Read())
            {
                fname.Text = dtrreg["fname"].ToString();
                lname.Text = dtrreg["lname"].ToString();
                dob.Text = dtrreg["dob"].ToString();
                string gen;
                gen = dtrreg["gender"].ToString().ToLower();
                if (gen == "male")
                {
                    male.Enabled = true;
                    male.Selected = true;
                }
                else
                {
                    female.Enabled = true;
                    female.Selected = true;
                }
                phno.Text = dtrreg["phno"].ToString();
                uid.Text = dtrreg["uid"].ToString();
                pass.Text = dtrreg["pass"].ToString();
                flno.Text = dtrreg["flno"].ToString();
                stno.Text = dtrreg["stno"].ToString();
                lm.Text = dtrreg["lm"].ToString();
                city.Text = dtrreg["city"].ToString();
                state.Text = dtrreg["state"].ToString();
                con.Close();
                dtrreg.Close();
            }

            /*
            fname.Text = "";
            lname.Text = "";
            dob.Text = "";
            male.Selected = false;
            female.Selected = false;
            phno.Text = "";
            uid.Text = "";
            pass.Text = "";
            flno.Text = "";
            stno.Text = "";
            lm.Text = "";
            state.Text = "";
            city.Text = "";
            */
        }
        protected void Edit_Click(object sender, EventArgs e)
        {
           
            dob.Enabled = true;
            phno.Enabled = true;
            pass.Enabled = true;
            flno.Enabled = true;
            stno.Enabled = true;
            lm.Enabled = true;
            city.Enabled = true;
            state.Enabled = true;
           
            male.Enabled = true;
            female.Enabled = true;
            Save.Enabled = true;
            Reset.Enabled = true;
        }
    }
}