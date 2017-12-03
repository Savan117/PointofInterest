using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Users
/// </summary>
public class Users
{
    public string username;
    public string password1;
    public string firstname;
    public string lastname;
    public string gender;
    public string address1;
    public string telephone;
    public string roles;
    
	public Users(string un, string pw, string fn, string ln, string g, string a, string tp, string r)
	{
        username = un;
        password1 = pw;
        firstname = fn;
        lastname = ln;
        gender = g;
        address1 = a;
        telephone = tp;
        roles = r;

	}
}