<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<form ID="form1" runat="server">--%>
        <div class="container">
            <!-- Page Heading/Breadcrumbs -->
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">About
                        </h1>
                    <ol class="breadcrumb">
                        <li><a href="index.html">Home</a>
                        </li>
                        <li class="active">About</li>
                    </ol>
                </div>
            </div>
            <!-- /.row -->

            <!-- Intro Content -->
            <div class="row">
                <div class="col-md-6">
                    <img class="img-responsive" src="images/background/POI_logo.jpg" alt=""/>
                </div>
                <div class="col-md-6">
                    <h2>About Point of Interest</h2>
                    <p>To Highlight the hidden treasures of jamaica while giving you the opportunity to make reservations and to have access to detail direction to these locations. </p> 
                </div>
            </div>
            <!-- /.row -->

            <!-- Team Members -->
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="page-header">Our Team</h2>
                </div>
                <div class="col-md-4 text-center">
                    <div class="thumbnail">
                        <img class="img-responsive" src="images/background/shanique_ceo.jpg" alt="">
                        <div class="caption">
                            <h3>Shanique Stephenson<br>
                                <small>CEO</small></h3>
                            <p>Founder of Point of Interest organization. Manages the general operation of the organization</p>
                            <ul class="list-inline">
                                <li><a href="#"><i class="fa fa-2x fa-facebook-square"></i></a>
                                </li>
                                <li><a href="#"><i class="fa fa-2x fa-linkedin-square"></i></a>
                                </li>
                                <li><a href="#"><i class="fa fa-2x fa-twitter-square"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 text-center">
                <div class="thumbnail">
                    <img class="img-responsive" src="images/background/mahalia.jpg" alt="">
                    <div class="caption">
                        <h3>Mahalia Gordon<br>
                            <small>CFO</small>
                        </h3>
                        <p>Manages finicial aspects of the organization. Worked at POI for over 3 years.</p>
                        <ul class="list-inline">
                            <li><a href="#"><i class="fa fa-2x fa-facebook-square"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-2x fa-linkedin-square"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-2x fa-twitter-square"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            </div>
        </div>
    <%--</form>--%>
</asp:Content>
