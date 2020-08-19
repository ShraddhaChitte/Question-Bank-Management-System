<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@include file="Header.jsp" %>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <!-- preloader area start -->
    <div id="preloader">
        <div class="loader"></div>
    </div>
    <!-- preloader area end -->
    <!-- page container area start -->
    <div class="page-container">

<%@ include file="Menu.jsp"%>

        <!-- main content area start -->
        <div class="main-content">
            <!-- header area start -->
            
            <%@ include file="Header-area.jsp"%>
                        <!-- page title area start -->
            <div class="page-title-area">
                <div class="row align-items-center">
                    <div class="col-sm-6">
                        <div class="breadcrumbs-area clearfix">
                            <h4 class="page-title pull-left">Dashboard</h4>
                            <ul class="breadcrumbs pull-left">
                                <li><a href="index.html">Home</a></li>
                                <li><span>Dashboard</span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-6 clearfix">
                        <div class="user-profile pull-right">
                            <img class="avatar user-thumb" src="assets/images/author/avatar.png" alt="avatar">
                            <h4 class="user-name dropdown-toggle" data-toggle="dropdown">Tonnie Johnson <i class="fa fa-angle-down"></i></h4>
                            <div class="dropdown-menu">
                                  <a class="dropdown-item" href="#">Login</a>
                                <a class="dropdown-item" href="#">View Profile</a>                             
                                <a class="dropdown-item" href="#">Log Out</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- page title area end -->
            <section class="about-area section-gap" id="about">
				<div class="container">
					<div class="row d-flex justify-content-center">
						<div class="menu-content pb-70 col-lg-8">
							<div class="title text-center">
								<h1 class="mb-10">About Myself</h1>
								<p>Who are in extremely love with eco friendly system.</p>
							</div>
						</div>
					</div>					
					<div class="row">
						<div class="col-lg-6 about-left">
							<p>
								It won’t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game, it has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale.
							</p>
							<h4 class="pb-40">Tools Expertness</h4>
				                <div class="skillbar" data-percent="85%">
				                    <div class="skill-bar-percent">After Effects 85%</div>
				                    <div class="skillwrap">
				                    	<div class="skillbar-bar" style="width: 85%;"></div>
				                    </div>
				                </div>

				                <div class="skillbar" data-percent="80%">
				                    <div class="skill-bar-percent">Photoshop 80%</div>
				                    <div class="skillwrap">
				                    	<div class="skillbar-bar" style="width: 80%;"></div>
									</div>
				                </div>

				                <div class="skillbar" data-percent="40%">
				                    <div class="skill-bar-percent">Illustrator 40%</div>
				                    <div class="skillwrap">
				                    	<div class="skillbar-bar" style="width: 40%;"></div>
									</div>
				                </div>

				                <div class="skillbar" data-percent="70%">
				                    <div class="skill-bar-percent">Sublime 70%</div>
				                    <div class="skillwrap">
				                    	<div class="skillbar-bar" style="width: 70%;"></div>
									</div>
				                </div>

				                <div class="skillbar" data-percent="75%">
				                    <div class="skill-bar-percent">Sketch 75%</div>
				                    <div class="skillwrap">
				                    	<div class="skillbar-bar" style="width: 75%;"></div>
									</div>
				                </div>				                
						</div>
						<div class="col-lg-6 about-right justify-content-end d-flex">
							<div class="myself-wrap">
								<img class="img-fluid" src="img/about-img.jpg" alt="">
								<div class="desc">
									<h4>Tonnie Johnson</h4>
									<p class="pb-10">Interactive Designer</p>
									<p><span class="lnr lnr-phone"></span> (012) +88 017 635 9754</p>
									<p><span class="lnr lnr-envelope"></span> tonnie_johnson@gmail.com</p>
									<a class="mt-30 text-uppercase talk-btn" href="#">Hire Me</span></a>
								</div>
							</div>
						</div>
					</div>
				</div>	
			</section>
			<!-- End about Area -->
			
			<!-- Start qualification Area -->
			<section class="qualification-area pt-100 pb-80">
				<div class="container">
					<div class="row d-flex justify-content-center">
						<div class="menu-content pb-20 col-lg-8">
							<div class="title text-center">
								<h1 class="mb-10">My Qualifications</h1>
								<p>Who are in extremely love with eco friendly system.</p>
							</div>
						</div>
					</div>							
					<div class="row d-flex justify-content-center">
						<div class="col-lg-6 col-md-6 qty-left">
							<div class="single-qly">
								<h3 class="text-uppercase">Spondonit</h3>
								<p>July 2015 to Present</p>
								<h4 class="pt-20 pb-20">Creative Content Developer</h4>
								<p>
									All users on MySpace will know that there are millions of <br>people out there. Every day besides.
								</p>							
							</div>
							<div class="btm-border d-block mx-auto"></div>								
							<div class="single-qly">
								<h3 class="text-uppercase">Codepixar</h3>
								<p>May 2013 to Present</p>
								<h4 class="pt-20 pb-20">UI/UX Designer</h4>
								<p>
									All users on MySpace will know that there are millions of <br>people out there. Every day besides.
								</p>								
							</div>							
						</div>
						<div class="col-lg-6 col-md-6 qty-right">
							<div class="single-qly">
								<h4 class="pb-20">Masters in Graphics & Fine Arts</h4>
								<p><b>Session</b>: 2010-11</p>								
								<p><b>Result</b>:  3.78 (In the Scale of 4.00)</p>									
							</div>
							<div class="btm-border d-block mx-auto"></div>							
							<div class="single-qly">
								<h4 class="pb-20">Bachelor in Graphics & UI/UX</h4>
								<p><b>Session</b>: 2006-09</p>								
								<p><b>Result</b>:  3.40 (In the Scale of 4.00)</p>									
							</div>	
							<div class="btm-border d-block mx-auto"></div>							
							<div class="single-qly">
								<h4 class="pb-20">Diploma in Fine Arts & Printing</h4>
								<p><b>Session</b>: 2003-06</p>								
								<p><b>Result</b>:  4.94 (In the Scale of 5.00)</p>								
							</div>																				
						</div>						
					</div>
				</div>	
			</section>
			
        </div>
        <!-- main content area end -->
       
        <!-- footer area end-->
    </div>
    <!-- page container area end -->
    <!-- offset area start -->
    <div class="offset-area">
        <div class="offset-close"><i class="ti-close"></i></div>
        <ul class="nav offset-menu-tab">
            <li><a class="active" data-toggle="tab" href="#activity">Activity</a></li>
            <li><a data-toggle="tab" href="#settings">Settings</a></li>
        </ul>
        <div class="offset-content tab-content">
            <div id="activity" class="tab-pane fade in show active">
                <div class="recent-activity">
                    <div class="timeline-task">
                        <div class="icon bg1">
                            <i class="fa fa-envelope"></i>
                        </div>
                        <div class="tm-title">
                            <h4>Rashed sent you an email</h4>
                            <span class="time"><i class="ti-time"></i>09:35</span>
                        </div>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse distinctio itaque at.
                        </p>
                    </div>
                    <div class="timeline-task">
                        <div class="icon bg2">
                            <i class="fa fa-check"></i>
                        </div>
                        <div class="tm-title">
                            <h4>Added</h4>
                            <span class="time"><i class="ti-time"></i>7 Minutes Ago</span>
                        </div>
                        <p>Lorem ipsum dolor sit amet consectetur.
                        </p>
                    </div>
                    <div class="timeline-task">
                        <div class="icon bg2">
                            <i class="fa fa-exclamation-triangle"></i>
                        </div>
                        <div class="tm-title">
                            <h4>You missed you Password!</h4>
                            <span class="time"><i class="ti-time"></i>09:20 Am</span>
                        </div>
                    </div>
                    <div class="timeline-task">
                        <div class="icon bg3">
                            <i class="fa fa-bomb"></i>
                        </div>
                        <div class="tm-title">
                            <h4>Member waiting for you Attention</h4>
                            <span class="time"><i class="ti-time"></i>09:35</span>
                        </div>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse distinctio itaque at.
                        </p>
                    </div>
                    <div class="timeline-task">
                        <div class="icon bg3">
                            <i class="ti-signal"></i>
                        </div>
                        <div class="tm-title">
                            <h4>You Added Kaji Patha few minutes ago</h4>
                            <span class="time"><i class="ti-time"></i>01 minutes ago</span>
                        </div>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse distinctio itaque at.
                        </p>
                    </div>
                    <div class="timeline-task">
                        <div class="icon bg1">
                            <i class="fa fa-envelope"></i>
                        </div>
                        <div class="tm-title">
                            <h4>Ratul Hamba sent you an email</h4>
                            <span class="time"><i class="ti-time"></i>09:35</span>
                        </div>
                        <p>Hello sir , where are you, i am egerly waiting for you.
                        </p>
                    </div>
                    <div class="timeline-task">
                        <div class="icon bg2">
                            <i class="fa fa-exclamation-triangle"></i>
                        </div>
                        <div class="tm-title">
                            <h4>Rashed sent you an email</h4>
                            <span class="time"><i class="ti-time"></i>09:35</span>
                        </div>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse distinctio itaque at.
                        </p>
                    </div>
                    <div class="timeline-task">
                        <div class="icon bg2">
                            <i class="fa fa-exclamation-triangle"></i>
                        </div>
                        <div class="tm-title">
                            <h4>Rashed sent you an email</h4>
                            <span class="time"><i class="ti-time"></i>09:35</span>
                        </div>
                    </div>
                    <div class="timeline-task">
                        <div class="icon bg3">
                            <i class="fa fa-bomb"></i>
                        </div>
                        <div class="tm-title">
                            <h4>Rashed sent you an email</h4>
                            <span class="time"><i class="ti-time"></i>09:35</span>
                        </div>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse distinctio itaque at.
                        </p>
                    </div>
                    <div class="timeline-task">
                        <div class="icon bg3">
                            <i class="ti-signal"></i>
                        </div>
                        <div class="tm-title">
                            <h4>Rashed sent you an email</h4>
                            <span class="time"><i class="ti-time"></i>09:35</span>
                        </div>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse distinctio itaque at.
                        </p>
                    </div>
                </div>
            </div>
            <div id="settings" class="tab-pane fade">
                <div class="offset-settings">
                    <h4>General Settings</h4>
                    <div class="settings-list">
                        <div class="s-settings">
                            <div class="s-sw-title">
                                <h5>Notifications</h5>
                                <div class="s-swtich">
                                    <input type="checkbox" id="switch1" />
                                    <label for="switch1">Toggle</label>
                                </div>
                            </div>
                            <p>Keep it 'On' When you want to get all the notification.</p>
                        </div>
                        <div class="s-settings">
                            <div class="s-sw-title">
                                <h5>Show recent activity</h5>
                                <div class="s-swtich">
                                    <input type="checkbox" id="switch2" />
                                    <label for="switch2">Toggle</label>
                                </div>
                            </div>
                            <p>The for attribute is necessary to bind our custom checkbox with the input.</p>
                        </div>
                        <div class="s-settings">
                            <div class="s-sw-title">
                                <h5>Show your emails</h5>
                                <div class="s-swtich">
                                    <input type="checkbox" id="switch3" />
                                    <label for="switch3">Toggle</label>
                                </div>
                            </div>
                            <p>Show email so that easily find you.</p>
                        </div>
                        <div class="s-settings">
                            <div class="s-sw-title">
                                <h5>Show Task statistics</h5>
                                <div class="s-swtich">
                                    <input type="checkbox" id="switch4" />
                                    <label for="switch4">Toggle</label>
                                </div>
                            </div>
                            <p>The for attribute is necessary to bind our custom checkbox with the input.</p>
                        </div>
                        <div class="s-settings">
                            <div class="s-sw-title">
                                <h5>Notifications</h5>
                                <div class="s-swtich">
                                    <input type="checkbox" id="switch5" />
                                    <label for="switch5">Toggle</label>
                                </div>
                            </div>
                            <p>Use checkboxes when looking for yes or no answers.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@ include file="Footer.jsp" %>
    </div>
    
    
    <!-- offset area end -->
    <!-- jquery latest version -->
    <script src="assets/js/vendor/jquery-2.2.4.min.js"></script>
    <!-- bootstrap 4 js -->
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/metisMenu.min.js"></script>
    <script src="assets/js/jquery.slimscroll.min.js"></script>
    <script src="assets/js/jquery.slicknav.min.js"></script>

    <!-- start chart js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
    <!-- start highcharts js -->
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <!-- start zingchart js -->
    <script src="https://cdn.zingchart.com/zingchart.min.js"></script>
    <script>
    zingchart.MODULESDIR = "https://cdn.zingchart.com/modules/";
    ZC.LICENSE = ["569d52cefae586f634c54f86dc99e6a9", "ee6b7db5b51705a13dc2339db3edaf6d"];
    </script>
    <!-- all line chart activation -->
    <script src="assets/js/line-chart.js"></script>
    <!-- all pie chart -->
    <script src="assets/js/pie-chart.js"></script>
    <!-- others plugins -->
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/scripts.js"></script>
    	<script src="js/vendor/jquery-2.2.4.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
			<script src="js/vendor/bootstrap.min.js"></script>
			<script src="js/jquery.ajaxchimp.min.js"></script>
			<script src="js/jquery.magnific-popup.min.js"></script>
			<script src="js/parallax.min.js"></script>			
			<script src="js/owl.carousel.min.js"></script>			
			<script src="js/jquery.sticky.js"></script>
			<script src="js/main.js"></script>	
			
</body>
<%@include file="Footer.jsp" %>
</html>