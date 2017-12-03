<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RegistrationSucess.aspx.cs" Inherits="RegistrationSucess" %>

<asp:Content id="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="jumbotron">
            <h1 style="font-weight:bold; font-size:45px;"> Your account,  <asp:Label ID="emailLbl" runat="server" Text=""></asp:Label>  &nbsp;has been Registrated Sucessfully! </h1>
            <p>Enjoy the benefits of having an account with Point of Interest, by making reservations for your favourite restaurants as well as reciving coupons and news on sales.</p>
            <a class="btn btn-primary btn-lg" href="Login.aspx" role="button">Login Now</a>
        </div>
        <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
   </div>
</asp:Content>

