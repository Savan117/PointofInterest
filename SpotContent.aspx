<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup ="true" CodeFile="SpotContent.aspx.cs" Inherits="SpotsContent" %>

<asp:Content id="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Custom CSS -->
    <link href="bootstrap/css/modern-business.css" rel="stylesheet"/>
    <!-- Custom Fonts -->
    <link href="bootstrap/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <script src="bootstrap/js/jquery.js"></script>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <!-- #region Jssor Slider Begin -->
    <!-- Generator: Jssor Slider Maker -->
    <!-- Source: http://www.jssor.com -->
    <!-- This code works with jquery library. -->
    <script src="jssor/js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="jssor/js/jssor.slider-21.1.6.mini.js" type="text/javascript"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {

            var jssor_1_SlideshowTransitions = [
              { $Duration: 1200, x: 0.3, $During: { $Left: [0.3, 0.7] }, $Easing: { $Left: $Jease$.$InCubic, $Opacity: $Jease$.$Linear }, $Opacity: 2 },
              { $Duration: 1200, x: -0.3, $SlideOut: true, $Easing: { $Left: $Jease$.$InCubic, $Opacity: $Jease$.$Linear }, $Opacity: 2 },
              { $Duration: 1200, x: -0.3, $During: { $Left: [0.3, 0.7] }, $Easing: { $Left: $Jease$.$InCubic, $Opacity: $Jease$.$Linear }, $Opacity: 2 },
              { $Duration: 1200, x: 0.3, $SlideOut: true, $Easing: { $Left: $Jease$.$InCubic, $Opacity: $Jease$.$Linear }, $Opacity: 2 },
              { $Duration: 1200, y: 0.3, $During: { $Top: [0.3, 0.7] }, $Easing: { $Top: $Jease$.$InCubic, $Opacity: $Jease$.$Linear }, $Opacity: 2 },
              { $Duration: 1200, y: -0.3, $SlideOut: true, $Easing: { $Top: $Jease$.$InCubic, $Opacity: $Jease$.$Linear }, $Opacity: 2 },
              { $Duration: 1200, y: -0.3, $During: { $Top: [0.3, 0.7] }, $Easing: { $Top: $Jease$.$InCubic, $Opacity: $Jease$.$Linear }, $Opacity: 2 },
              { $Duration: 1200, y: 0.3, $SlideOut: true, $Easing: { $Top: $Jease$.$InCubic, $Opacity: $Jease$.$Linear }, $Opacity: 2 },
              { $Duration: 1200, x: 0.3, $Cols: 2, $During: { $Left: [0.3, 0.7] }, $ChessMode: { $Column: 3 }, $Easing: { $Left: $Jease$.$InCubic, $Opacity: $Jease$.$Linear }, $Opacity: 2 },
              { $Duration: 1200, x: 0.3, $Cols: 2, $SlideOut: true, $ChessMode: { $Column: 3 }, $Easing: { $Left: $Jease$.$InCubic, $Opacity: $Jease$.$Linear }, $Opacity: 2 },
              { $Duration: 1200, y: 0.3, $Rows: 2, $During: { $Top: [0.3, 0.7] }, $ChessMode: { $Row: 12 }, $Easing: { $Top: $Jease$.$InCubic, $Opacity: $Jease$.$Linear }, $Opacity: 2 },
              { $Duration: 1200, y: 0.3, $Rows: 2, $SlideOut: true, $ChessMode: { $Row: 12 }, $Easing: { $Top: $Jease$.$InCubic, $Opacity: $Jease$.$Linear }, $Opacity: 2 },
              { $Duration: 1200, y: 0.3, $Cols: 2, $During: { $Top: [0.3, 0.7] }, $ChessMode: { $Column: 12 }, $Easing: { $Top: $Jease$.$InCubic, $Opacity: $Jease$.$Linear }, $Opacity: 2 },
              { $Duration: 1200, y: -0.3, $Cols: 2, $SlideOut: true, $ChessMode: { $Column: 12 }, $Easing: { $Top: $Jease$.$InCubic, $Opacity: $Jease$.$Linear }, $Opacity: 2 },
              { $Duration: 1200, x: 0.3, $Rows: 2, $During: { $Left: [0.3, 0.7] }, $ChessMode: { $Row: 3 }, $Easing: { $Left: $Jease$.$InCubic, $Opacity: $Jease$.$Linear }, $Opacity: 2 },
              { $Duration: 1200, x: -0.3, $Rows: 2, $SlideOut: true, $ChessMode: { $Row: 3 }, $Easing: { $Left: $Jease$.$InCubic, $Opacity: $Jease$.$Linear }, $Opacity: 2 },
              { $Duration: 1200, x: 0.3, y: 0.3, $Cols: 2, $Rows: 2, $During: { $Left: [0.3, 0.7], $Top: [0.3, 0.7] }, $ChessMode: { $Column: 3, $Row: 12 }, $Easing: { $Left: $Jease$.$InCubic, $Top: $Jease$.$InCubic, $Opacity: $Jease$.$Linear }, $Opacity: 2 },
              { $Duration: 1200, x: 0.3, y: 0.3, $Cols: 2, $Rows: 2, $During: { $Left: [0.3, 0.7], $Top: [0.3, 0.7] }, $SlideOut: true, $ChessMode: { $Column: 3, $Row: 12 }, $Easing: { $Left: $Jease$.$InCubic, $Top: $Jease$.$InCubic, $Opacity: $Jease$.$Linear }, $Opacity: 2 },
              { $Duration: 1200, $Delay: 20, $Clip: 3, $Assembly: 260, $Easing: { $Clip: $Jease$.$InCubic, $Opacity: $Jease$.$Linear }, $Opacity: 2 },
              { $Duration: 1200, $Delay: 20, $Clip: 3, $SlideOut: true, $Assembly: 260, $Easing: { $Clip: $Jease$.$OutCubic, $Opacity: $Jease$.$Linear }, $Opacity: 2 },
              { $Duration: 1200, $Delay: 20, $Clip: 12, $Assembly: 260, $Easing: { $Clip: $Jease$.$InCubic, $Opacity: $Jease$.$Linear }, $Opacity: 2 },
              { $Duration: 1200, $Delay: 20, $Clip: 12, $SlideOut: true, $Assembly: 260, $Easing: { $Clip: $Jease$.$OutCubic, $Opacity: $Jease$.$Linear }, $Opacity: 2 }
            ];

            var jssor_1_options = {
                $AutoPlay: true,
                $SlideshowOptions: {
                    $Class: $JssorSlideshowRunner$,
                    $Transitions: jssor_1_SlideshowTransitions,
                    $TransitionsOrder: 1
                },
                $ArrowNavigatorOptions: {
                    $Class: $JssorArrowNavigator$
                },
                $ThumbnailNavigatorOptions: {
                    $Class: $JssorThumbnailNavigator$,
                    $Cols: 10,
                    $SpacingX: 8,
                    $SpacingY: 8,
                    $Align: 360
                }
            };

            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

            /*responsive code begin*/
            /*you can remove responsive code if you don't want the slider scales while window resizing*/
            function ScaleSlider() {
                var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 800);
                    jssor_1_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }
            ScaleSlider();
            $(window).bind("load", ScaleSlider);
            $(window).bind("resize", ScaleSlider);
            $(window).bind("orientationchange", ScaleSlider);
            /*responsive code end*/
        });

    </script>
    <style>
        /* jssor slider arrow navigator skin 05 css */
        /*
        .jssora05l                  (normal)
        .jssora05r                  (normal)
        .jssora05l:hover            (normal mouseover)
        .jssora05r:hover            (normal mouseover)
        .jssora05l.jssora05ldn      (mousedown)
        .jssora05r.jssora05rdn      (mousedown)
        .jssora05l.jssora05lds      (disabled)
        .jssora05r.jssora05rds      (disabled)
        */
        .jssora05l, .jssora05r {
            display: block;
            position: absolute;
            /* size of arrow element */
            width: 40px;
            height: 40px;
            cursor: pointer;
            background: url('img/a17.png') no-repeat;
            overflow: hidden;
        }
        .jssora05l { background-position: -10px -40px; }
        .jssora05r { background-position: -70px -40px; }
        .jssora05l:hover { background-position: -130px -40px; }
        .jssora05r:hover { background-position: -190px -40px; }
        .jssora05l.jssora05ldn { background-position: -250px -40px; }
        .jssora05r.jssora05rdn { background-position: -310px -40px; }
        .jssora05l.jssora05lds { background-position: -10px -40px; opacity: .3; pointer-events: none; }
        .jssora05r.jssora05rds { background-position: -70px -40px; opacity: .3; pointer-events: none; }
        
        /* jssor slider thumbnail navigator skin 01 css */
        /*
        .jssort01 .p            (normal)
        .jssort01 .p:hover      (normal mouseover)
        .jssort01 .p.pav        (active)
        .jssort01 .p.pdn        (mousedown)
        */
        .jssort01 .p {
            position: absolute;
            top: 0;
            left: 0;
            width: 72px;
            height: 72px;
        }
        
        .jssort01 .t {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            border: none;
        }
        
        .jssort01 .w {
            position: absolute;
            top: 0px;
            left: 0px;
            width: 100%;
            height: 100%;
        }
        
        .jssort01 .c {
            position: absolute;
            top: 0px;
            left: 0px;
            width: 68px;
            height: 68px;
            border: #000 2px solid;
            box-sizing: content-box;
            background: url('img/t01.png') -800px -800px no-repeat;
            _background: none;
        }
        
        .jssort01 .pav .c {
            top: 2px;
            _top: 0px;
            left: 2px;
            _left: 0px;
            width: 68px;
            height: 68px;
            border: #000 0px solid;
            _border: #fff 2px solid;
            background-position: 50% 50%;
        }
        
        .jssort01 .p:hover .c {
            top: 0px;
            left: 0px;
            width: 70px;
            height: 70px;
            border: #fff 1px solid;
            background-position: 50% 50%;
        }
        
        .jssort01 .p.pdn .c {
            background-position: 50% 50%;
            width: 68px;
            height: 68px;
            border: #000 2px solid;
        }
        
        * html .jssort01 .c, * html .jssort01 .pdn .c, * html .jssort01 .pav .c {
            /* ie quirks mode adjust */
            width /**/: 72px;
            height /**/: 72px;
        }
        .imgstyle {
            Width:800px;
            height:356px;
        }
        .thumbimgstyle {
            Width:72px;
            height:72px;
        }

        h1{
            color:  Black;
            text-align: center;
            font-family: 'Vibur', cursive;
            font-size: 50px;
            }
        h5 {
            color: Black;
            text-align: center;
            font-family: 'Vibur', cursive;
            font-size: 20px;
            }
    </style>
    <style>
        .button
        {
          display: inline-block;
          border-radius: 4px;
          border: none;
          color: #FFFFFF;
          text-align: center;
          font-size: 28px;
          padding: 20px;
          width: 200px;
          transition: all 0.5s;
          cursor: pointer;
          margin: 5px;
        }
        
        .button span {
          cursor: pointer;
          display: inline-block;
          position: relative;
          transition: 0.5s;
        }

        .button span:after {
          content: '»';
          position: absolute;
          opacity: 0;
          top: 0;
          right: -20px;
          transition: 0.5s;
        }

        .button:hover span {
          padding-right: 25px;
        }

        .button:hover span:after {
          opacity: 1;
          right: 0;
        }
    </style>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB_lCnVrG6orm6OmyLdPVhfzLBnuXRTlSE&sensor=false"></script>
    <script type="text/javascript">
        var markers = [
            <asp:Repeater ID="rptMarkers" runat="server">
            <ItemTemplate>
                    {
                        "name": '<%# Eval("name") %>',
                        "lat": '<%# Eval("latitude") %>',
                        "lng": '<%# Eval("longitude") %>',
                        "typeofspot": '<%# Eval("typeofspot") %>'
                    }
    </ItemTemplate>
    <SeparatorTemplate>
        ,
    </SeparatorTemplate>
   </asp:Repeater>
        ];
    </script>
    <script type="text/javascript">

        window.onload = function () {
            var mapOptions = {
                center: new google.maps.LatLng(markers[0].lat, markers[0].lng),
                zoom: 12,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var infoWindow = new google.maps.InfoWindow();
            var map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
            for (i = 0; i < markers.length; i++) {
                var data = markers[i]
                var myLatlng = new google.maps.LatLng(data.lat, data.lng);
                var marker = new google.maps.Marker({
                    position: myLatlng,
                    map: map,
                    title: data.title
                });
                (function (marker, data) {
                    google.maps.event.addListener(marker, "click", function (e) {
                        infoWindow.setContent(data.name);
                        infoWindow.open(map, marker);
                    });
                })(marker, data);
            }
        }
    </script>
    <%--<form id="form1" runat="server">--%>
        <div class="container mywrapper" >
            <table>
                <tr>
                    <td><h4><asp:Label ID="locationLbl" runat="server" Text="Select Location"></asp:Label></h4></td>
                    <td>&nbsp; <asp:DropDownList ID="SpotDropDownList" runat="server" Height="31px" Width="316px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name" OnSelectedIndexChanged="SpotDropDownList_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList></td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PointofInterestConnectionString %>" SelectCommand="sp_select_AllLocationSpots" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            <br/>
            <div class="col-lg-12">
                <h1 class="page-header">
                    Welcome to <asp:Label ID="spotnameLbl" runat="server" Text="Label"></asp:Label>
                </h1>
            </div>
            <div id="jssor_1" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 700px; height: 356px; overflow: hidden; visibility: hidden; background-color: #24262e;">
                <!-- Loading Screen -->
                <div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
                    <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                    <div style="position:absolute;display:block;background:url('img/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
                </div>
                <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 700px; height: 356px; overflow: hidden;">
                    <div data-p="144.50" style="display: none;">
                        <asp:Image ID="Image1" data-u="image" runat="server"  class="imgstyle"/>
                        <asp:Image ID="Imagethumb1" data-u="thumb" runat="server"  class="thumbimgstyle "/>
                    </div>
                    <div data-p="144.50" style="display: none;">
                        <asp:Image ID="Image2" data-u="image" runat="server"  class="imgstyle" />
                        <asp:Image ID="Imagethumb2" data-u="thumb" runat="server"  class="thumbimgstyle"/>
                    </div>
                    <div data-p="144.50" style="display: none;">
                        <asp:Image ID="Image3" data-u="image" runat="server"  class="imgstyle"/>
                        <asp:Image ID="Imagethumb3" data-u="thumb" runat="server"  class="thumbimgstyle"/>
                    </div>
                </div>
                <!-- Thumbnail Navigator -->
                <div data-u="thumbnavigator" class="jssort01" style="position:absolute;left:0px;bottom:0px;width:800px;height:100px;" data-autocenter="1">
                    <!-- Thumbnail Item Skin Begin -->
                    <div data-u="slides" style="cursor: default;">
                        <div data-u="prototype" class="p">
                            <div class="w">
                                <div data-u="thumbnailtemplate" class="t"></div>
                            </div>
                            <div class="c"></div>
                        </div>
                    </div>
                    <!-- Thumbnail Item Skin End -->
                </div>
                <!-- Arrow Navigator -->
                <span data-u="arrowleft" class="jssora05l" style="top:158px;left:8px;width:40px;height:40px;"></span>
                <span data-u="arrowright" class="jssora05r" style="top:158px;right:8px;width:40px;height:40px;"></span>
            </div>
            <!-- #endregion Jssor Slider End -->     
            <!-- Page Content -->
            <div class="container">
                <!-- Features Section -->
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="page-header"> Description of <asp:Label ID="decriptheadLbl" runat="server" Text="Label"></asp:Label></h2>
                    </div>
                    <div class="col-md-6">
                        <h5><asp:Label ID="decriptionLbl" runat="server" Font-Size="13px" Text="Label"></asp:Label></h5>
                    </div>
                    <div class="col-md-6">
                        <asp:Image ID="logoImg" class="img-responsive" Width="300px" Height="150px" runat="server" />
                    </div>
                </div>
                <br />
                <!-- /.row -->
                <!-- Marketing Icons Section -->
                <hr />
                <div class="row">
                    <div class="col-md-4">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h4><i class="fa fa-fw fa-check"></i> Information</h4>
                            </div>
                            <div class="panel-body">
                                <h4> 
                                    Type of Spot: <asp:Label ID="typespotLbl"  runat="server" Text="Label"></asp:Label><br />
                                </h4>
                                <h4 style="line-height:150%">
                                    Tele: 876-999-9999 <br />
                                    Location : <asp:Label runat="server" ID="streetLbl"></asp:Label> <br />
                                    <asp:Label runat="server" ID="parishlbl"></asp:Label> <br />
                                    Parking: Available <br />
                                    Payment:  Cash/Debit/Credit Card <br/>
                                </h4>
                                <a href="#" class="btn btn-default">Learn More</a>
                            </div>
                        </div>
                    </div>
                
                    <div id="dvMap" style="width:400px; height:300px;" class="col-md-4">
                    </div> 

                    <div class="col-md-3">
                        <asp:Button runat="server" ID="booknowBtn" Text="Book Now" BackColor="#4CAF50" style="vertical-align:middle" CssClass="button" OnClick="booknowBtn_Click"></asp:Button >
                    </div>
                </div>
                <br />
                 <div class="panel panel-primary">
                    <div class="panel-heading"><h4><i class="fa fa-fw fa-clock-o"></i> Opening Hours</h4></div>
                    <div class="panel-body">
                        <table class="table">
                            <tr>
                                <td>Monday </td>
                                <td><asp:Label ID="monhrLbl"  runat="server" Text="Label"></asp:Label></td>
                            </tr>
                            <tr>
                                <td>Tuesday </td>
                                <td><asp:Label ID="tuehrLbl" runat="server" Text="Label"></asp:Label></td>
                            </tr>
                            <tr>
                                <td>Wednesday </td>
                                <td><asp:Label ID="wedhrLbl" runat="server" Text="Label"></asp:Label></td>
                            </tr>
                            <tr>
                                <td>Thursday </td>
                                <td> <asp:Label ID="thuhrLbl" runat="server" Text="Label"></asp:Label></td>
                            </tr>  
                            <tr>
                                <td>Friday </td>
                                <td> <asp:Label ID="frihrLbl" runat="server" Text="Label"></asp:Label></td>
                            </tr>
                            <tr>
                                <td>Saturday</td>
                                <td> <asp:Label ID="sathrLbl" runat="server" Text="Label"></asp:Label></td>
                            </tr>
                            <tr>    
                                <td>Sunday </td>
                                <td> <asp:Label ID="sunhrLbl" runat="server" Text="Label"></asp:Label></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <hr/>
            </div>
        </div>
    </i>
</asp:Content>
