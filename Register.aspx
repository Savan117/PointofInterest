<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css'5/>
    <link rel="stylesheet" href="css/style.css"/>
    <style>
        .style1{
            color: #00CC00;
            text-align: center;
            font-family: 'Vibur', cursive;
        }
        .style2 {
            font-size:medium;
            color:red;
        }
        .auto-style2 {
            height: 22px;
        }
    </style>

    <%--<form id="form1" runat="server">--%>
        <div class="login-form">
            <table>
                <tr>
                    <td colspan="2"><h1 class="style1">Register an Account </h1> <br/></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="requiredLbl" runat="server" Text="Fields Required *" ForeColor="Red" class="style2" Visible="false"></asp:Label></td>
                </tr>
                <tr>
                    <td> <asp:Label ID="passwordCompValidatorLbl" runat="server" Text="Password Do Not Match *" ForeColor="Red" class="style2" Visible="False"></asp:Label></td>
                </tr>
                <tr>
                    <td><asp:Label ID="emailformatValidatorLbl" runat="server" Text="Invalid Email address *" ForeColor="Red" class="style2" Visible="False"></asp:Label> 
                        <br />
                        <asp:Label ID="emailexistvalidatorLbl" runat="server" ForeColor="Red" class="style2" Text="Username Already Exist *" Visible="False"></asp:Label>
                        <br /><br />
                    </td>
                </tr>
                <tr>
                    <td class="label label-info tdsize">First Name </td>
                    <td> <asp:TextBox ID="fnameTxtbx" class="form-control fmcl2" runat="server"></asp:TextBox> <br/></td>
                    <td><asp:Label ID="fnameValidatorLbl" runat="server" Text="*" ForeColor="Red" class="style2" Visible="False"></asp:Label></td>
                </tr>

                <tr>
                    <td class="label label-info tdsize">Last Name </td>
                    <td> <asp:TextBox ID="lnameTxtbx" class="form-control fmcl2" runat="server"></asp:TextBox> <br/></td>
                    <td> <asp:Label ID="lnameValidatorLbl" runat="server" Text="*" ForeColor="Red" class="style2" Visible="False"></asp:Label> </td>
                </tr>

                <tr>
                    <td class="label label-info tdsize">Gender </td>
                    <td> <asp:RadioButtonList ID="genderRadioButtonList" runat="server" Width="108px" CellPadding="2" CellSpacing="2" ForeColor="#00CC00" Height="60px">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>  <br/>
                    </td>
                    <td><asp:Label ID="genderValidatorLbl" runat="server" Text="*" ForeColor="Red" class="style2" Visible="False"></asp:Label></td>
                </tr>
  
                <tr>
                    <td class="label label-info tdsize">Address </td>
                    <td> <asp:TextBox ID="addressTxtbx" class="form-control fmcl2"  runat="server"></asp:TextBox> <br/></td>
                    <td><asp:Label ID="addressValidatorLbl" runat="server" Text="*" ForeColor="Red" class="style2" Visible="False"></asp:Label> </td>
                </tr>

                <tr>
                    <td class="label label-info tdsize">TelePhone </td>
                    <td> 
                        <asp:TextBox ID="telephTxtbx" class="form-control fmcl2"  runat="server"></asp:TextBox> 
                        <br/>
                    </td>
                    <td><asp:Label ID="telephValidatorLbl" runat="server" Text="*" ForeColor="Red" class="style2" Visible="False"></asp:Label></td>
                </tr>
                <tr>
                    <td class="label label-info tdsize">Username (email) </td>
                    <td> <asp:TextBox ID="usernameTxtbx" class="form-control fmcl2" runat="server" TextMode="Email"></asp:TextBox> <br/></td>
                    <td><asp:Label ID="usernameValidatorLbl" runat="server" Text="*" ForeColor="Red" class="style2" Visible="False"></asp:Label></td>-
                </tr>
                <tr>
                    <td class="label label-info tdsize">Password </td>
                    <td> <asp:TextBox ID="passwordTxtbx" class="form-control fmcl2" runat="server" TextMode="Password"></asp:TextBox> <br/></td>
                    <td> <asp:Label ID="passwordValidatorLbl" runat="server" Text="*" ForeColor="Red" class="style2" Visible="False"></asp:Label></td>
                </tr>
                 <tr>
                    <td class="label label-info tdsize">Confirm Password </td>
                   <td> <asp:TextBox ID="confpasswordTxtbx" class="form-control fmcl2" runat="server" TextMode="Password"></asp:TextBox> <br/></td>
                   <td> <asp:Label ID="confpasswordValidatorLbl" runat="server" Text="*" ForeColor="Red" class="style2" Visible="False"></asp:Label> </td>
                </tr>
            </table>
           
            <br />  
            <asp:Button ID="registerBtn" class="btn btn-success" runat="server" Width="100%" Height="50px" Text="Register" OnClick="registerBtn_Click" />
        </div>
        <br /><br /> <br /><br /><br /><br />
    <%--</form>--%>
</asp:Content>