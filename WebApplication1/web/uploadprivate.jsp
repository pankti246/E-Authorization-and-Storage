<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>DocStore</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="DocStore Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/normalize.css" />

<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script src="js/main.js"></script>
<!-- //js -->
<!-- font-awesome icons -->
<link rel="stylesheet" href="css/font-awesome.min.css" />
<!-- //font-awesome icons -->
<link href="//fonts.googleapis.com/css?family=Cabin+Condensed:400,500,600,700" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<script src="js/sensor.js"></script>
</head>
	
<body>
    <%
        if(session.getAttribute("name")==null)
        {%>
        <script type="text/javascript">
            alert("You need to LogIn to upload documents!");
        </script> 
        <%getServletContext().getRequestDispatcher("/upload.jsp").include(request, response);
        }
        %>
<!-- banner -->
	<div class="w3-agileits-banner2">
		<div class="w3layouts-header">
			<div class="container">
				<div class="w3layouts-header-left">
					<ul>
						<li><a href="#" class="w3_agile_facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
						<li><a href="#" class="agile_twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
						<li><a href="#" class="w3_agile_dribble"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
						<li><a href="#" class="w3_agile_vimeo"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
					</ul>
				</div>
				<div class="w3layouts-header-right">
					<ul>
						<li><a href="profile.jsp" class="log"><%=session.getAttribute("name")%></a></li>
						<li><a href="logout.jsp" class="log" >Logout</a></li>
						<li><div class="cd-main-header">
							<a class="cd-search-trigger" href="#cd-search"> <span></span></a>
						 <!-- cd-header-buttons -->
					</div></li>
					</ul>
					
					<div id="cd-search" class="cd-search">
						<form action="#" method="post">
							<input name="Search" type="search" placeholder="Search...">
						</form>
					</div>
				</div>
				<div class="clearfix"></div>
			
			</div>
		</div>
		<div class="container">
		<div class="agile-logo">
				<a href="index.jsp"><img src="images\logo.png" height="100" width="100"> </img></a>
				<h1><a href="index.html"></a></h1>
			</div>
			<div class="w3ls-nav">
					<nav class="navbar navbar-default">
							<div class="navbar-header">
								<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
							</div>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li><a class="active" href="upload.jsp">Upload</a></li>
								<li><a href="about.jsp">About Us</a></li>
								<li><a href="how.jsp" >How to Use</a></li>
								<li><a href="gallery.jsp" >Trending</a></li>	
								<li><a href="contact.jsp">Contact Us</a></li>
							</ul>
							<div class="clearfix"> </div>							
						</div>	
					</nav>		
			</div>
		</div>
	</div>
<!-- //banner -->
<div class="container">
<form action="#" method="post">
	<div class="col-md-3 content">
		<div class="box">
			<input type="file" name="file-5[]" id="file-5" class="inputfile inputfile-4" data-multiple-caption="{count} files selected" multiple />
			<label for="file-5"><figure><svg xmlns="http://www.w3.org/2000/svg" width="20" height="17" viewBox="0 0 20 17"><path d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z"/></svg></figure> <span>Choose a file&hellip;</span></label>
		</div>
	</div>	
	<div class="col-md-8 agileits_mail_grid_right10">
		
			<br/>
			<span>
				<i>Title:</i>
				<input id="t" type="text" onkeyup="clean('t')" pattern="[A-Za-z0-9]{,15}"/>
			</span>
			<span>
				<i>Description:</i>
				<textarea id="d" rows="3" cols="20" onkeyup="clean('d')"></textarea>
			</span>
			<span>
				<i>Category:</i>
					<input type="text" list="category"/>
					<datalist id="category">
					<option value="Educational">
					<option value="Personal">
					<option value="Political">
					<option value="Cultural">
					<option value="Travelling">
					<option value="Sports">
					<option value="Commercial">
					<option value="Other">
					</datalist>
			</span>
			<span>
                            <i>Password:</i>
                            <input type="password" style="
                                
                                width: 80%;
                                outline:none;            
                                background: #fff;
                                color: #212121;
                                padding: 10px;
                                font-size: 14px;
                                border: 1px solid #E7E7E7;
                                margin-left:30px;"
                            />
			</span>
			<center><input type="submit" value="Upload"></center>
		</form>
	</div>
</div>

<!-- newsletter -->
<div class="container">
<div class="newsletter">
		
			<div class="col-md-4 agileinfo_newsletter_left">
				<h3>Subscribe to our free weekly watch newsletter !</h3>
			</div>
			<div class="col-md-8 agileinfo_newsletter_right">
				<form action="#" method="post">
					<input type="email" name="Email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
					<input type="submit" value="Subscribe">
				</form>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //newsletter -->
<!-- footer -->
<div class="agile-footer">
		<div class="container">
			<div class="aglie-info-logo">
				<h4><a href="index.jsp">DocStore</a></h4>
			</div>
			<ul class="aglieits-nav">
				<li><a href="upload.jsp">Upload</a><i>|</i></li>
				<li><a href="about.jsp">About Us</a><i>|</i></li>
				<li><a href="how.jsp">How To Use</a><i>|</i></li>
				<li><a href="gallery.jsp">Trending</a><i>|</i></li>
				<li><a href="contact.jsp">Contact Us</a></li>
			</ul>
			<div class="w3layouts_mail_grid">
				<div class="col-md-3 w3layouts_mail_grid_left">
					<div class="w3layouts_mail_grid_left2">
						<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
						<h3>Mail Us</h3>
						<a href="mailto:info@example.com">panktipatel246@gmail.com</a>
					</div>
				</div>
				<div class="col-md-3 w3layouts_mail_grid_left">
					<div class="w3layouts_mail_grid_left2">
					<span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>
						<h3>Phone</h3>
						<p>+91 9558239600</p>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			
		</div>
	</div>
	<!-- //footer -->
	<!-- bootstrap-pop-up -->
	<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					Sign In & Sign Up
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="w3_login_module">
							<div class="module form-module">
							  <div class="toggle"><p style="font-size:40px; margin:13px -1px;"><i class="fa fa-times fa-pencil"></i></p>
								<div class="tooltip">Click Me</div>
							  </div>
							  <div class="form">
								<h3>Login to your account</h3>
								<form action="login.jsp" method="post">
                                                                  <div id="errorBox1"></div>
								  <input type="text" name="Username" placeholder="Username" required="">
								  <input type="password" name="Password" placeholder="Password" required="">
								  <input type="checkbox" name="Robot" required="">&nbsp;&nbsp;I am not a Robot<br/><br/> 
								  <input type="submit" value="Login">
								</form>
							  </div>
							  <div class="form">
								<h3>Create an account</h3>
								<form action="#" method="post">
								  <input type="text" name="Username" placeholder="Username" required="">
								  <input type="password" name="Password" placeholder="Password" required="">
								  <input type="email" name="Email" placeholder="Email Address" required="">
								  <input type="text" name="Phone" placeholder="Phone Number" required="">
								  <input type="submit" value="Register">
								</form>
							  </div>
							  <div class="cta"><a href="#">Forgot your password?</a></div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<script>
		$('.toggle').click(function(){
		  // Switches the Icon
		  $(this).children('i').toggleClass('fa-pencil');
		  // Switches the forms  
		  $('.form').animate({
			height: "toggle",
			'padding-top': 'toggle',
			'padding-bottom': 'toggle',
			opacity: "toggle"
		  }, "slow");
		});
	</script>
<!-- //bootstrap-pop-up -->
<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
	<script src="js/responsiveslides.min.js"></script>
	<script src="js/custom-file-input.js"></script>

<!-- //for bootstrap working -->
</body>
</html>