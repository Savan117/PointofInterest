using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            DataTable dt = this.GetData("sp_select_AllLocationSpots");
            rptMarkers.DataSource = dt;
            rptMarkers.DataBind();
        }

    }

    private DataTable GetData(string procedure)
    {
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataTable dt = new DataTable();
        string conString = ConfigurationManager.ConnectionStrings["PointofInterestConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(conString);

       cmd = new SqlCommand(procedure, conn);
       cmd.CommandType = CommandType.StoredProcedure;
       da.SelectCommand = cmd;
        da.Fill(dt);

        return dt;
    }
}