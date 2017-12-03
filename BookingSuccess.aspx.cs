using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BookingSuccess : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        nameLbl.Text = Request.QueryString["fn"];
        spotnameLbl.Text= Request.QueryString["bk"];
        emailLbl.Text = Request.QueryString["em"];
        dateLbl.Text=Convert.ToDateTime(Request.QueryString["dt"]).ToLongDateString();
        timeLbl.Text = Convert.ToDateTime(Request.QueryString["tm"]).ToShortTimeString();
    }
}