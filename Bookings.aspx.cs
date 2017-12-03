using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Bookings : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Users user = (Users)Session["ReadUser"];
        emailTxtbx.Text = user.username;
        bookingLbl.Text = Request.QueryString["sp"];
    }
    protected void booknowBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("BookingSuccess.aspx?em=" + emailTxtbx.Text + "&fn=" + firstnameTxtbx.Text + "&bk=" + bookingLbl.Text + "&dt=" + dateTxtbx.Text + "&tm=" + timeTxtbx.Text);
    }
}