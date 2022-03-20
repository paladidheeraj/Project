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
    public partial class AddEvent : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"server=DESKTOP-M84SQ1E\SQLEXPRESS;Integrated Security=SSPI;database=project");
        SqlCommand cmd;

        DataSet ds = new DataSet(); //

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();

        }

        protected void lnkfdate_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            fdate.Text = Calendar1.SelectedDate.ToLongDateString();

            Calendar1.Visible = false;
        }

        protected void lnktdate_Click(object sender, EventArgs e)
        {
            Calendar2.Visible = true;
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            tdate.Text = Calendar2.SelectedDate.ToLongDateString();

            Calendar2.Visible = false;
        }

        protected void Reset_Click(object sender, EventArgs e)
        {
            uname.Text = "";
            fdate.Text = "";
            tdate.Text = "";
            city.SelectedIndex = -1;
            pbudget.Text = "";
            phno.Text = "";

        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            /*
            if (Session["llname"] !=null && Session["pphno"]!=null)
            {
                uname.Text = Session["llname"].ToString();
                phno.Text = Session["pphno"].ToString();
            } 
            */
            string strinsert;
            string ser = "";
            foreach (CheckBox checkBox in service.Controls.OfType<CheckBox>())
            {
                if (checkBox.Checked)
                {
                    ser += checkBox.Text + ",";
                }
            }
            strinsert = "Insert into addevent values('" + uname.Text + "','" + fdate.Text + "','"+ tdate.Text + "','" + city.SelectedValue.ToString() + "','" + ser + "','" + pbudget.Text + "'," + "'" + phno.Text + "')";
           
            cmd = new SqlCommand(strinsert, con);
            cmd.ExecuteNonQuery();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Request Submitted Successfully')</script>");
            con.Close();
        }
    }
}