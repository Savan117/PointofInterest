using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Users user = (Users)Session["ReadUser"];
        
        if (user != null)
        {
            loginLbl.Text = "Welcome, " + user.firstname;
            loginLbl.Enabled = false;
            registerLbl.Visible = false;
            logoutBtn.Visible = true;
        }
    }
    protected void logoutBtn_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        loginLbl.Text = "Login";
        registerLbl.Visible = true;
        logoutBtn.Visible = false;
        loginLbl.Enabled = true;
    }
}
