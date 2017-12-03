using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected int Count_Users()
    {
        PointofInterestDataContext Context = new PointofInterestDataContext();
        var result = Context.sp_select_AllUsers();
        int count=0;
        foreach (var r in result)
        {
            count++;
        }

        return count;
    }

    protected void registerBtn_Click(object sender, EventArgs e)
    {
        int i = 0;
        bool cmp=true, exist=false;
        ResetValidators();

        if (fnameTxtbx.Text == "")
        {
            i++;
            fnameValidatorLbl.Visible = true;
        }

        if (lnameTxtbx.Text == "")
        {
            i++;
            lnameValidatorLbl.Visible = true;
        }

        if (addressTxtbx.Text == "")
        {
            i++;
            addressValidatorLbl.Visible = true;
        }

        if (genderRadioButtonList.SelectedItem == null)
        {
            i++;
            genderValidatorLbl.Visible = true;
        }

        if (telephTxtbx.Text == "" || telephTxtbx.Text.Length != 10)
        {
            i++;
            telephValidatorLbl.Visible = true;
        }

        if (usernameTxtbx.Text == "")
        {
            i++;
            usernameValidatorLbl.Visible = true;
        }
        else
        {
            try { var eMailValidator = new System.Net.Mail.MailAddress(usernameTxtbx.Text); }
            catch (FormatException ex)
            {
                cmp = false;
                emailformatValidatorLbl.Visible = true;
            }
        }

        if (passwordTxtbx.Text == "")
        {
            i++;
            passwordValidatorLbl.Visible = true;
        }
        if (confpasswordTxtbx.Text == "")
        {
            i++;
            confpasswordValidatorLbl.Visible = true;
        }

        if (passwordTxtbx.Text != confpasswordTxtbx.Text)
        {
            passwordCompValidatorLbl.Visible = true;
            passwordValidatorLbl.Visible = true;
            cmp = false;
        }

        PointofInterestDataContext Context = new PointofInterestDataContext();
        var result1 = Context.sp_select_AllUsers();
        foreach(var r in result1)
        {
            if(usernameTxtbx.Text == r.username )
            {
                exist=true;
                emailexistvalidatorLbl.Visible=true;
                usernameValidatorLbl.Visible=true;
            }
        }

        if (i > 0)
        {
            requiredLbl.Visible = true;
        }
        else
        {
            if (i == 0 && cmp == true && exist == false)
            {
                PointofInterestDataContext context = new PointofInterestDataContext();
                context.sp_insert_User(usernameTxtbx.Text, passwordTxtbx.Text, fnameTxtbx.Text, lnameTxtbx.Text, genderRadioButtonList.SelectedValue.ToString(), addressTxtbx.Text, telephTxtbx.Text, "Users");
                Users user = new Users(usernameTxtbx.Text, passwordTxtbx.Text, fnameTxtbx.Text, lnameTxtbx.Text, genderRadioButtonList.SelectedValue.ToString(), addressTxtbx.Text, telephTxtbx.Text, "Users");
                Session["RegisterUser"] = user;
                Response.Redirect("RegistrationSucess.aspx");
            }
        }


    }

    protected void ResetValidators()
    {
        requiredLbl.Visible = false;
        fnameValidatorLbl.Visible = false;
        lnameValidatorLbl.Visible = false;
        addressValidatorLbl.Visible = false;
        genderValidatorLbl.Visible = false;
        telephValidatorLbl.Visible = false;
        usernameValidatorLbl.Visible = false;
        emailformatValidatorLbl.Visible = false;
        emailexistvalidatorLbl.Visible = true;
        passwordValidatorLbl.Visible = false;
        confpasswordValidatorLbl.Visible = false;
        passwordCompValidatorLbl.Visible = false;
    }
}