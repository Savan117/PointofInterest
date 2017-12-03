using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SearchbyCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            PointofInterestDataContext context = new PointofInterestDataContext();
            var result = context.sp_select_AllLocationSpots();
            typeofspotDropDownList.Items.Add("Any");
            typeofspotDropDownList.Items.Add("Restaurant");
            typeofspotDropDownList.Items.Add("Attraction");
            typeofspotDropDownList.Items.Add("Venue");
            parishDropDownList.Items.Add("Any");
            parishDropDownList.Items.Add("Kingston");
        }
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "weatherconditionpanelImg_Click")
        {
            string n = e.CommandArgument.ToString();
            Response.Redirect("SpotContent.aspx?name="+n);
        }
    }
}
