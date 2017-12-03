<%@ Page Language="C#"  MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BookingSuccess.aspx.cs" Inherits="BookingSuccess" %>

<asp:Content id="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="jumbotron">
            <h1 style="font-weight:bold; font-size:45px;"> <asp:Label ID="nameLbl" runat="server" Text=""></asp:Label> &nbsp;your booking at&nbsp;<asp:Label ID="spotnameLbl" runat="server" Text=""></asp:Label>&nbsp;</h1>
            <h1 style="font-weight:bold; font-size:45px;"> has been made Sucessfully! </h1>
            <p> Booking was made for <asp:Label ID="dateLbl" runat="server" ForeColor="#3380FF" Text="" ></asp:Label> &nbsp;at <asp:Label ID="timeLbl" runat="server" ForeColor="#3380FF" Text=""></asp:Label>. <br/>An email was sent to you at &nbsp; 
                <asp:Label ID="emailLbl" ForeColor="#3380FF" runat="server" Text=""></asp:Label>&nbsp;  to confirm you booking information. <br/>
                Enjoy the benefits of having an account with Point of Interest, by making reservations for your favourite restaurants as well as reciving coupons and news on sales.</p>
        </div>
        <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
   </div>
</asp:Content>
