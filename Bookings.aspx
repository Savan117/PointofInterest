<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Bookings.aspx.cs" Inherits="Bookings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        td {
            font-family: Lato, sans-serif;
            font-weight:700;
        }
        div {
            font-family:  Lato, sans-serif;
             font-weight:700;
        }
        .bookingform {
          width:550px;
          
          background: #FBFBFB;
          -moz-border-radius: 4px;
          -webkit-border-radius: 4px;
          border-radius: 4px;
          margin: auto;
          left: 0;
          right: 0;
        }

    </style>
      <link rel="stylesheet" href="/../code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
      <link rel="stylesheet" href="/resources/demos/style.css"/>
      <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
     <script>
         $(function () {
             $("#dateTxtbx").datepicker();
         });
    </script>
    <div class="container bookingform">
        <h2 style="color:#3380FF; font-weight:bold;">Bookings at <asp:Label runat="server" ID="bookingLbl"></asp:Label></h2>
        <h4>Enter Your Booking Information Below.</h4>
        <table class="table" style="width:100%">
            <tr>
                <td style="font-size:16px; ">Email </td>
            </tr>
             <tr><td style="font-size:13px;"><asp:TextBox runat="server" ID="emailTxtbx" CssClass="form-control"></asp:TextBox></td></tr>
             <tr><td><small class="text-muted">Updates about your reservation or booking will be sent to the email provided above.</small></td></tr>
        
            <tr>
                <td style="font-size:16px;">First Name</td>
            </tr>
            <tr><td style="font-size:13px;"><asp:TextBox runat="server" ID="firstnameTxtbx" CssClass="form-control"></asp:TextBox></td></tr>
        
            <tr>
                <td style="font-size:16px;">Last Name </td>
            </tr>

            <tr><td style="font-size:13px;"><asp:TextBox runat="server" ID="lastnameTxtbx" CssClass="form-control"></asp:TextBox></td></tr>
         
            <tr>
                <td style="font-size:16px;">Phone Number </td>
            </tr>
            <tr><td style="font-size:13px;"><asp:TextBox runat="server" ID="phonenumberTxtbx" CssClass="form-control"></asp:TextBox></td></tr>
            <tr><td><small class="text-muted">The Location may contact you to confirm reservation or booking.</small></td></tr>
            
            <tr>
                <td style="font-size:16px;">Numbe of Persons </td>
            </tr>
            <tr><td style="font-size:13px;"><asp:TextBox runat="server" ID="numofpersonTxtbx" CssClass="form-control"></asp:TextBox></td></tr>
            <tr><td><small class="text-muted">Including yourself how many persons will be going.</small></td></tr>
 
        </table>
        <table class="table">
            <tr>
                <td class="auto-style1">Date</td>
                <td>Time</td>
            </tr>
             <tr>
                <td style="font-size:13px;" class="auto-style1"><asp:TextBox runat="server" id="dateTxtbx" class="form-control" TextMode="Date"></asp:TextBox></td>
                <td style="font-size:13px;"><asp:TextBox runat="server" id="timeTxtbx" class="form-control" TextMode="Time"></asp:TextBox></td>
            </tr>
        </table>
        <div style="margin-left:35%;">
            <asp:Button runat="server" ID="booknowBtn" Text="Book Now" CssClass="btn btn-primary" Height="46px" Width="137px" OnClick="booknowBtn_Click"/>
        </div>
        <br /><br />
    </div>
    <br /><br /><br />
</asp:Content>