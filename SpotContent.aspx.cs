using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SpotsContent : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!this.IsPostBack)
        {
            String name = Request.QueryString["name"];
            SpotDropDownList.SelectedValue = name;
            DataTable dt = this.GetData("Select Spots.name, Spots.typeofspot, Location.latitude, Location.longitude From Spots INNER JOIN Location ON Spots.location_id=Location.locationid");// Where Spots.name="+SpotDropDownList.SelectedValue.ToString());
            rptMarkers.DataSource = dt;
            rptMarkers.DataBind();
            PointofInterestDataContext context = new PointofInterestDataContext();
            var result1 = context.sp_select_SpotsOpeningHoursLocationbyName(name);
            foreach (var r in result1)
            {
                spotnameLbl.Text = r.name;
                typespotLbl.Text = r.typeofspot;
                // websiteLbl.Text = r.websitelink;
                streetLbl.Text = r.Street;
                parishlbl.Text = r.Parish;

                monhrLbl.Text = r.mondayhr;
                tuehrLbl.Text = r.tuesdayhr;
                wedhrLbl.Text = r.wednesdayhr;
                thuhrLbl.Text = r.thursdayhr;
                frihrLbl.Text = r.fridayhr;
                sathrLbl.Text = r.saturdayhr;
                sunhrLbl.Text = r.sundayhr;

                decriptheadLbl.Text = r.name;
                decriptionLbl.Text = r.descriptions;

                Image1.ImageUrl = r.picturesdir + "01.jpg";
                Imagethumb1.ImageUrl = r.picturesdir + "01.jpg";

                Image2.ImageUrl = r.picturesdir + "02.jpg";
                Imagethumb2.ImageUrl = r.picturesdir + "02.jpg";

                Image3.ImageUrl = r.picturesdir + "03.jpg";
                Imagethumb3.ImageUrl = r.picturesdir + "03.jpg";

                logoImg.ImageUrl = r.picturesdir + "logo.jpg";

            }
        }

        Users user = (Users)Session["ReadUser"];
        if (user == null)
        {
            booknowBtn.Visible = false;
        }
        else
        {
            booknowBtn.Visible = true;
        }


    }
    protected void SpotDropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {
        PointofInterestDataContext context = new PointofInterestDataContext();
        var result = context.sp_select_SpotsOpeningHoursLocationbyName(SpotDropDownList.SelectedValue.ToString());
        foreach (var r in result)
        {
            spotnameLbl.Text = r.name;
            typespotLbl.Text = r.typeofspot;
            //websiteLbl.Text = r.websitelink;
            streetLbl.Text = r.Street;
            parishlbl.Text = r.Parish;

            monhrLbl.Text = r.mondayhr;
            tuehrLbl.Text = r.tuesdayhr;
            wedhrLbl.Text = r.wednesdayhr;
            thuhrLbl.Text = r.thursdayhr;
            frihrLbl.Text = r.fridayhr;
            sathrLbl.Text = r.saturdayhr;
            sunhrLbl.Text = r.sundayhr;

            decriptheadLbl.Text = r.name;
            decriptionLbl.Text = r.descriptions;

            Image1.ImageUrl = r.picturesdir + "01.jpg";
            Imagethumb1.ImageUrl = r.picturesdir + "01.jpg";

            Image2.ImageUrl = r.picturesdir + "02.jpg";
            Imagethumb2.ImageUrl = r.picturesdir + "02.jpg";

            Image3.ImageUrl = r.picturesdir + "03.jpg";
            Imagethumb3.ImageUrl = r.picturesdir + "03.jpg";

            logoImg.ImageUrl = r.picturesdir + "logo.jpg";

        }

    }

    private DataTable GetData(string selectstring)
    {
        string conString = ConfigurationManager.ConnectionStrings["PointofInterestConnectionString"].ConnectionString;
        SqlCommand cmd = new SqlCommand(selectstring);
        using (SqlConnection con = new SqlConnection(conString))
        {
            using (SqlDataAdapter sda = new SqlDataAdapter())
            {
                cmd.Connection = con;

                sda.SelectCommand = cmd;
                using (DataTable dt = new DataTable())
                {
                    sda.Fill(dt);
                    return dt;
                }
            }
        }
    }
    protected void booknowBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Bookings.aspx?sp="+spotnameLbl.Text);
    }
}
