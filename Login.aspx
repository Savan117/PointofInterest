<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>
 
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css'/>

    <link rel="stylesheet" href="css/style.css"/>
    <%--<form id="form1" runat="server">--%>
        <!-- /.row -->
        <div class="login-form" style="margin-top:10%;">
            <h1 style="color: #00CC00;"> Point of Interest Login</h1>
            <h4 style="font-size:24px">Enter your Email address and password </h4>
            <asp:Label ID="requiredLbl" runat="server" Text="lbl*" ForeColor="Red" Visible="False"></asp:Label> <br />    <br />            
            <div class="form-group ">
                <asp:TextBox ID="usernameTxtbx" class="form-control fmcl1" runat="server"></asp:TextBox>
               <i class="fa fa-user"><asp:Label ID="usernamerequiredLbl" runat="server" Text="*" ForeColor="Red" Font-Size="15px" Visible="False"></asp:Label></i>
            </div>

            <div class="form-group log-status">
                <asp:TextBox ID="passwordTxtbx" class="form-control fmcl1" runat="server" TextMode="Password"></asp:TextBox>
                <i class="fa fa-lock"> <asp:Label ID="passwordrequiredLbl" runat="server" Text="*" ForeColor="Red" Font-Size="15px" Visible="False"></asp:Label></i>
            </div>
            <asp:Label ID="invalidloginLbl" runat="server" Text="Invalid Username or Password" ForeColor="Red" Visible="False" Font-Overline="False"></asp:Label>
            <a class="link" href="#">Lost your password?</a>
            <asp:Button ID="loginBtn" class="log-btn" runat="server" Text="Login" OnClick="loginBtn_Click" />
        </div>
    <%--</form>--%>
    <br /> <br /> <br /> <br /> <br /> <br /> 
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src="js/index.js"></script>

</asp:Content>
