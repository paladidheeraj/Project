using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class ViewProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            }
        }
        protected void lnkpickdate_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            dob.Text = Calendar1.SelectedDate.ToLongDateString();

            Calendar1.Visible = false;
        }

        protected void Submit_Click(object sender, EventArgs e)
        {

            Response.Write("<script LANGUAGE='JavaScript' >alert('Your details are submitted successfully')</script>");
        }
        protected void Reset_Click(object sender, EventArgs e)
        {


            fname.Text = "";
            lname.Text = "";
            dob.Text = "";
            male.Checked = false;
            female.Checked = false;
            phno.Text = "";
            uid.Text = "";
            pass.Text = "";
            flno.Text = "";
            stno.Text = "";
            lm.Text = "";
            state.Text = "";
            city.Text = "";
        }
        protected void Ok_Click(object sender, EventArgs e)
        {

        }

        protected void Cancel_Click(object sender, EventArgs e)
        {

        }
    }
}