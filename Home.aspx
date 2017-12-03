<%@ Page Language="C#"  MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>


<asp:Content id="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Bootstrap Core CSS -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"/>

    <!-- Custom CSS -->
    <link href="bootstrap/css/stylish-portfolio.css" rel="stylesheet"/>

    <!-- Custom Fonts -->
    <link href="bootstrap/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css"/>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
	    <!-- #region Jssor Slider Begin -->
    <!-- Generator: Jssor Slider Maker -->
    <!-- Source: http://www.jssor.com -->
    <!-- This code works with jquery library. -->
    <script src="jssor/js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="jssor/js/jssor.slider-21.1.6.mini.js" type="text/javascript"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {

            var jssor_1_SlideoTransitions = [
              [{ b: -1, d: 1, o: -1 }, { b: 0, d: 1000, o: 1 }],
              [{ b: 1900, d: 2000, x: -379, e: { x: 7 } }],
              [{ b: 1900, d: 2000, x: -379, e: { x: 7 } }],
              [{ b: -1, d: 1, o: -1, r: 288, sX: 9, sY: 9 }, { b: 1000, d: 900, x: -1400, y: -660, o: 1, r: -288, sX: -9, sY: -9, e: { r: 6 } }, { b: 1900, d: 1600, x: -200, o: -1, e: { x: 16 } }]
            ];

            var jssor_1_options = {
                $AutoPlay: true,
                $SlideDuration: 800,
                $SlideEasing: $Jease$.$OutQuint,
                $CaptionSliderOptions: {
                    $Class: $JssorCaptionSlideo$,
                    $Transitions: jssor_1_SlideoTransitions
                },
                $ArrowNavigatorOptions: {
                    $Class: $JssorArrowNavigator$
                },
                $BulletNavigatorOptions: {
                    $Class: $JssorBulletNavigator$
                }
            };

            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

            /*responsive code begin*/
            /*you can remove responsive code if you don't want the slider scales while window resizing*/
            function ScaleSlider() {
                var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 1920);
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
        /* jssor slider bullet navigator skin 05 css */
        /*
        .jssorb05 div           (normal)
        .jssorb05 div:hover     (normal mouseover)
        .jssorb05 .av           (active)
        .jssorb05 .av:hover     (active mouseover)
        .jssorb05 .dn           (mousedown)
        */
        .jssorb05 {
            position: absolute;
        }
        .jssorb05 div, .jssorb05 div:hover, .jssorb05 .av {
            position: absolute;
            /* size of bullet elment */
            width: 16px;
            height: 16px;
            background: url('jssor/img/b05.png') no-repeat;
            overflow: hidden;
            cursor: pointer;
        }
        .jssorb05 div { background-position: -7px -7px; }
        .jssorb05 div:hover, .jssorb05 .av:hover { background-position: -37px -7px; }
        .jssorb05 .av { background-position: -67px -7px; }
        .jssorb05 .dn, .jssorb05 .dn:hover { background-position: -97px -7px; }
        
        /* jssor slider arrow navigator skin 22 css */
        /*
        .jssora22l                  (normal)
        .jssora22r                  (normal)
        .jssora22l:hover            (normal mouseover)
        .jssora22r:hover            (normal mouseover)
        .jssora22l.jssora22ldn      (mousedown)
        .jssora22r.jssora22rdn      (mousedown)
        .jssora22l.jssora22lds      (disabled)
        .jssora22r.jssora22rds      (disabled)
        */
        .jssora22l, .jssora22r {
            display: block;
            position: absolute;
            /* size of arrow element */
            width: 40px;
            height: 58px;
            cursor: pointer;
            background: url('jssor/img/a22.png') center center no-repeat;
            overflow: hidden;
        }
        .jssora22l { background-position: -10px -31px; }
        .jssora22r { background-position: -70px -31px; }
        .jssora22l:hover { background-position: -130px -31px; }
        .jssora22r:hover { background-position: -190px -31px; }
        .jssora22l.jssora22ldn { background-position: -250px -31px; }
        .jssora22r.jssora22rdn { background-position: -310px -31px; }
        .jssora22l.jssora22lds { background-position: -10px -31px; opacity: .3; pointer-events: none; }
        .jssora22r.jssora22rds { background-position: -70px -31px; opacity: .3; pointer-events: none; }
    </style>
    <%--<form id="form1" runat="server">--%>
        
    <div id="jssor_1" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 1200px; height: 550px; overflow: hidden; visibility: hidden;">

        <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 1200px; height: 550px; overflow: hidden;">
            <div data-p="225.00">
                <img data-u="image" src="images/background/04.jpg" />
				<div class="text-vertical-center" style="position: absolute; top:200px; left:380px; width: 480px; height: 120px; color:white; ">
					<h1>Point of Interest</h1>
					<h3> Locate and view information for you favourite spots in Jamaica</h3>
					<br/>
					<a href="#about" class="btn btn-dark btn-lg">Find Out More</a>
				</div>

            </div>
            <div data-p="225.00" style="display: none;">
                <img data-u="image" src="images/background/05.jpg" />
				<div class="text-vertical-center" style="position: absolute; top:200px; left:380px; width: 480px; height: 120px; color:white;">
					<h1>Your One Stop Site! </h1>
					<h3>For finding the restaurant &amp attraction for you</h3>
					<br/>
					<a href="#about" class="btn btn-dark btn-lg">Find Out More</a>
				</div>
            </div>
            <div data-p="225.00" data-po="80% 55%" style="display: none;">
                <img data-u="image" src="images/background/07.jpg" />
				<div class="text-vertical-center" style="position: absolute; top:200px; left:380px; width: 480px; height: 120px; color:white;">
					<h1>Start Your Searching Now!</h1>
					<h3 >We feature various restaurants &amp; attractions in Jamaica</h3>
					<br/>
					<a href="#about" class="btn btn-dark btn-lg">Find Out More</a>
				</div>
            </div>
			<div data-p="225.00" data-po="80% 55%" style="display: none;">
                <img data-u="image" src="images/background/06.jpg" />
				<div class="text-vertical-center" style="position: absolute; top:200px; left:380px; width: 480px; height: 120px; color:white; ">
					<h1>Make Your Reservation </h1>
					<h3>For you favourite restaurant  &amp; attractions Here </h3>
					<br/>
					<a href="#about" class="btn btn-dark btn-lg">Find Out More</a>
				</div>
            </div>
            <a data-u="any" href="http://www.jssor.com" style="display:none">Full Width Slider</a>
        </div>
        <!-- Bullet Navigator -->
        <div data-u="navigator" class="jssorb05" style="bottom:16px;right:16px;" data-autocenter="1">
            <!-- bullet navigator item prototype -->
            <div data-u="prototype" style="width:16px;height:16px;"></div>
        </div>
        <!-- Arrow Navigator -->
        <span data-u="arrowleft" class="jssora22l" style="top:0px;left:8px;width:40px;height:58px;" data-autocenter="2"></span>
        <span data-u="arrowright" class="jssora22r" style="top:0px;right:8px;width:40px;height:58px;" data-autocenter="2"></span>
    </div>
    <!-- #endregion Jssor Slider End -->


    <!-- About -->
    <section id="about" class="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Stylish Portfolio is the perfect theme for your next project!</h2>
                    <p class="lead">This theme features some wonderful photography courtesy of <a target="_blank" href="http://join.deathtothestockphoto.com/">Death to the Stock Photo</a>.</p>
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </section>

    <!-- Services -->
    <!-- The circle icons use Font Awesome's stacked icon classes. For more information, visit http://fontawesome.io/examples/ -->
    <section id="services" class="services bg-primary">
        <div class="container">
            <div class="row text-center">
                <div class="col-lg-10 col-lg-offset-1">
                    <h2>Partners</h2>
                    <hr class="small">
                    <div class="row">
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                    <img src="images/background/herbal_infusion_logo.jpg" style= "width:100px; height:100px"/>
                            </span>
                                <h4>
                                    <strong>Herbal Infused Water</strong>
                                </h4>
                                <p>Enjoy health, flavourful and refreshing water from our Partner Herbal Infurion.</p>
                                <a href="#" class="btn btn-light">Learn More</a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                    <img src="images/background/fusion_essence.jpg" style= "width:100px; height:100px"/>
                            </span>
                                <h4>
                                    Fusion Essence
                                </h4>
                                <p>Stop your searching and choose Fusion Essence has the Place Host your Event.</p>
                                <a href="#" class="btn btn-light">Learn More</a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-flask fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong>Market Your Business</strong>
                                </h4>
                                <p> Join Point of Interest to Market your business the right way</p>
                                <a href="#" class="btn btn-light">Learn More</a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-shield fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong>Become a Partner</strong>
                                </h4>
                                <p> Be a Part of the Point of Interest Family to enjoy exclusive benefits</p>
                                <a href="#" class="btn btn-light">Learn More</a>
                            </div>
                        </div>
                    </div>
                    <!-- /.row (nested) -->
                </div>
                <!-- /.col-lg-10 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </section>

    <!-- Callout -->
    <aside class="callout">
        <div class="text-vertical-center" style=" background: url('images/background/01.jpg') no-repeat center center scroll;">
            <h1><<img src="images/background/POI_logo.jpg" width="500" height="200" style=" opacity:0.8"/></h1>
        </div>
    </aside>
    
    <!-- Portfolio -->
    <section id="portfolio" class="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-lg-offset-1 text-center">
                    <h2 style="font-family:Gabriola; font-size:50px;">Featured Spots</h2>
                    <hr class="medium">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="#">
                                    <!--<asp:Image ID="Image1" runat="server" />-->
                                    <img class="img-portfolio img-responsive" src="images/featured/01.jpg" style="height:333px; width:500px;"/>
                                </a>
                                <h3 style="font-family:Gabriola; font-size:28px;">China Express</h3>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="#">
                                    <!--<asp:Image ID="Image2" runat="server" />-->
                                    <img class="img-portfolio img-responsive" src="images/featured/02.jpg" style="height:333px; width:500px;"/>
                                </a>
                                <h3 style="font-family:Gabriola; font-size:28px;"> Cuddyz</h3>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="#">
                                    <!--<asp:Image ID="Image3" runat="server" />-->
                                    <img class="img-portfolio img-responsive" src="images/featured/03.jpg" style="height:333px; width:500px;"/>
                                </a>
                                <h3 style="font-family:Gabriola; font-size:28px;">Tea Tree Crêperie</h3>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="#">
                                     <!--<asp:Image ID="Image4" runat="server" Width="16px" />-->
                                    <img class="img-portfolio img-responsive" src="images/featured/04.jpg" style="height:333px; width:500px;"/>
                                </a>
                                <h3 style="font-family:Gabriola; font-size:28px;">Eden Gardens Wellness Resort </h3>
                            </div>
                        </div>
                    </div>
                    <!-- /.row (nested) -->
                    <a href="#" class="btn btn-dark">View More Items</a>
                </div>
                <!-- /.col-lg-10 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </section>

    <!-- Call to Action -->
    <aside class="call-to-action bg-primary">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h3>For All Bookings Done with our Partners Enjoy Free Case of Herbal Infused Water</h3>
                    <a href="#" class="btn btn-lg btn-light">Click Me to Find Out More!</a>
                    <a href="#" class="btn btn-lg btn-dark">Look at Me!</a>
                </div>
            </div>
        </div>
    </aside>
<%--</form>--%>

</asp:Content>