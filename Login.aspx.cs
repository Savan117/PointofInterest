using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        requiredLbl.Visible = false;
        usernamerequiredLbl.Visible = false;
        passwordrequiredLbl.Visible = false;
        invalidloginLbl.Visible = false;

    }
    protected int Count_Number_of_Users()
    {
        PointofInterestDataContext Context = new PointofInterestDataContext();
        var result = Context.sp_select_AllUsers();
        int count = 0;
        foreach (var r in result)
        {
            if (r.username != "")
            {
                count++;
            }
        }
        return count;
    }


    protected void loginBtn_Click(object sender, EventArgs e)
    {
        requiredLbl.Visible=false;
        usernamerequiredLbl.Visible = false;
        passwordrequiredLbl.Visible = false;
        invalidloginLbl.Visible = false;

        int count = 0;
        PointofInterestDataContext Context = new PointofInterestDataContext();
        var result = Context.sp_select_AllUsers();
        if (usernameTxtbx.Text == "")
        {
            requiredLbl.Text = "Username Field Required *";
            requiredLbl.Visible = true;
            usernamerequiredLbl.Visible = true;
        }
        else 
        {
            if (passwordTxtbx.Text == "")
            {
                requiredLbl.Text = "Password Field Required *";
                requiredLbl.Visible = true;
                passwordrequiredLbl.Visible = true;
            }
        }

        if (usernameTxtbx.Text == "" && passwordTxtbx.Text == "")
        {
            requiredLbl.Text = "Username and Password Field Required *";
            requiredLbl.Visible = true;
            usernamerequiredLbl.Visible = true;
            passwordrequiredLbl.Visible = true;
        }



        if (usernameTxtbx.Text != "" && passwordTxtbx.Text != "")
        {
            foreach (var r in result)
            {
                if (usernameTxtbx.Text != r.username || passwordTxtbx.Text != r.password1 && count == Count_Number_of_Users()-1)
                {
                    invalidloginLbl.Visible = true;
                }
                else
                {
                    if (usernameTxtbx.Text == r.username && passwordTxtbx.Text == r.password1)
                    {
                        Users user = new Users(r.username, r.password1, r.fname, r.lname, r.gender, r.address1, r.telephone, r.roles);
                        Session["ReadUser"]=user;
                        Response.Redirect("Home.aspx");
                    }
                }
                count++;
            }
        }
        
    }
}