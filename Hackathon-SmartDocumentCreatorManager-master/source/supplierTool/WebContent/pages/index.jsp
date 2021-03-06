<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en-US">
<!--<![endif]-->

<%@ taglib prefix="s" uri="/struts-tags"%>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Xseed</title>
	<meta name="description" content="A free html template with Sketch design made with Bootstrap">
	<meta name="keywords" content="free html template, bootstrap, ui kit, sass" />
	<meta name="author" content="Codrops" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- favicon generated by http://realfavicongenerator.net/ -->
	<link rel="apple-touch-icon" sizes="57x57" href="<%=request.getContextPath() %>/pages/img/favicon/apple-touch-icon-57x57.png">
	<link rel="apple-touch-icon" sizes="60x60" href="<%=request.getContextPath() %>/pages/img/favicon/apple-touch-icon-60x60.png">
	<link rel="apple-touch-icon" sizes="72x72" href="<%=request.getContextPath() %>/pages/img/favicon/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="76x76" href="<%=request.getContextPath() %>/pages/img/favicon/apple-touch-icon-76x76.png">
	<link rel="apple-touch-icon" sizes="114x114" href="<%=request.getContextPath() %>/pages/img/favicon/apple-touch-icon-114x114.png">
	<link rel="apple-touch-icon" sizes="120x120" href="<%=request.getContextPath() %>/pages/img/favicon/apple-touch-icon-120x120.png">
	<link rel="apple-touch-icon" sizes="144x144" href="<%=request.getContextPath() %>/pages/img/favicon/apple-touch-icon-144x144.png">
	<link rel="apple-touch-icon" sizes="152x152" href="<%=request.getContextPath() %>/pages/img/favicon/apple-touch-icon-152x152.png">
	<link rel="apple-touch-icon" sizes="180x180" href="<%=request.getContextPath() %>/pages/img/favicon/apple-touch-icon-180x180.png">
	<link rel="icon" type="image/png" href="<%=request.getContextPath() %>/pages/img/favicon/favicon-32x32.png" sizes="32x32">
	<link rel="icon" type="image/png" href="<%=request.getContextPath() %>/pages/img/favicon/favicon-194x194.png" sizes="194x194">
	<link rel="icon" type="image/png" href="<%=request.getContextPath() %>/pages/img/favicon/favicon-96x96.png" sizes="96x96">
	<link rel="icon" type="image/png" href="<%=request.getContextPath() %>/pages/img/favicon/android-chrome-192x192.png" sizes="192x192">
	<link rel="icon" type="image/png" href="<%=request.getContextPath() %>/pages/img/favicon/favicon-16x16.png" sizes="16x16">
	<link rel="manifest" href="<%=request.getContextPath() %>/pages/img/favicon/manifest.json">
	<link rel="mask-icon" href="<%=request.getContextPath() %>/pages/img/favicon/safari-pinned-tab.svg" color="#5bbad5">
	<link rel="shortcut icon" href="<%=request.getContextPath() %>/pages/img/favicon/favicon.ico">
	<meta name="msapplication-TileColor" content="#66e0e5">
	<meta name="msapplication-TileImage" content="<%=request.getContextPath() %>/pages/img/favicon/mstile-144x144.png">
	<meta name="msapplication-config" content="<%=request.getContextPath() %>/pages/img/favicon/browserconfig.xml">
	<meta name="theme-color" content="#ffffff">
	<!-- end favicon links -->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/pages/css/bootstrap.min.css" />
	<link rel="stylesheet" href="<%=request.getContextPath() %>/pages/css/normalize.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/pages/css/animate.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/pages/css/flickity.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/pages/css/styles.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/pages/css/style.css" type="text/css" />
	<!-- Include one of jTable styles. -->
	<link href="<%=request.getContextPath()%>/pages/js/jtable.2.4.0/themes/metro/blue/jtable.min.css" rel="stylesheet" type="text/css" />
 
 	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.0/jquery-ui.min.js"></script>
	<!-- Include jTable script file. -->
	<script src="<%=request.getContextPath()%>/pages/js/jtable.2.4.0/jquery.jtable.min.js" type="text/javascript"></script>
	
	
	
</head>

<body >
	<!--[if lt IE 8]>
	<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
	<![endif]-->
	<div class="container-fluid">
		<div class="row">
			<div class="header-nav-wrapper">
				<div class="logo">
					<a href="<%=request.getContextPath() %>/pages/index.jsp"><img src="<%=request.getContextPath() %>/pages/img/xseed.png" alt="Xseed"></a>
				</div>
				<div class="primary-nav-wrapper">
					<nav>
						<ul class="primary-nav">
							<li><a href="#intro">The collective</a></li>
							<li><a href="<%=request.getContextPath() %>/getStartedPage">Get Started</a></li>
						</ul>
					</nav>
					<div class="secondary-nav-wrapper">
						<ul class="secondary-nav">
							<li class="subscribe"><a href="<%=request.getContextPath() %>/pages/signup.jsp">Login</a></li>
							<!-- <li class="search"><a href="#search" class="show-search"><i class="fa fa-search"></i></a></li> -->
						</ul>
					</div>
					<!-- <div class="search-wrapper">
						<ul class="search">
							<li>
								<input type="text" id="search-input" placeholder="Start typing then hit enter to search">
							</li>
							<li>
								<a href="#" class="hide-search"><i class="fa fa-close"></i></a>
							</li>
						</ul>
					</div> -->
				</div>
				<div class="navicon">
					<a class="nav-toggle" href="#"><span></span></a>
				</div>
			</div>
		</div>
	</div>
	<header class="hero">
		<div class="carousel js-flickity">
			<div class="carousel-cell" style="background-image: url(<%=request.getContextPath() %>/pages/img/hero-bg-01.jpg);">
				<div class="hero-bg">
					<div class="container">
						<div class="row">
							<div class="col-md-12 text-center">
								<h1 class="wp1">Introducing, Xseed. Smart document creator and manager.</h1>
								<a href="#intro" class="btn primary wp2">Explore!</a>
							</div>
						</div>
						<div class="row">
							<div class="col-md-8 col-md-offset-2 hero-intro-text wp3">
								<p>Xseed is a <span class="bold italic">FREE</span>, document generation tool based on templates provided. </p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="carousel-cell" style="background-image: url(<%=request.getContextPath() %>/pages/img/hero-bg-02.jpg);">
				<div class="hero-bg">
					<div class="container">
						<div class="row">
							<div class="col-md-12 text-center">
								<h1 class="wp1">Get a head start, with the Xseed Sketch file.</h1>
								<a href="http://tympanus.net/codrops/?p=26570" class="btn primary wp2">Download Sketch File</a>
							</div>
						</div>
						<div class="row">
							<div class="col-md-8 col-md-offset-2 hero-intro-text wp3">
								<p>Create your landing page in minutes with Synthetica's Sketch style guide.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="carousel-cell" style="background-image: url(<%=request.getContextPath() %>/pages/img/hero-bg-03.jpg);">
				<div class="hero-bg">
					<div class="container">
						<div class="row">
							<div class="col-md-12 text-center">
								<h1 class="wp1">Download Xseed today, it's free forever.</h1>
								<a href="http://tympanus.net/codrops/?p=26570" class="btn primary wp2">Download Template</a>
							</div>
						</div>
						<div class="row">
							<!-- <div class="col-md-8 col-md-offset-2 hero-intro-text wp3">
								<p>Available exclusively from Codrops.</p>
							</div> -->
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class='mouse-container'>
			<a href="#intro">
				<div class='mouse'>
					<span class='scroll-down'></span>
				</div>
			</a>
		</div>
	</header>
	<!-- SECTION: Intro -->
	<section class="collective has-padding" id="intro">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<h4>The collective</h4>
				</div>
				<div class="col-md-9">
				<br>
					<p>The Xseed</p>
					<div class="video-player">
						<video id="video_synth" class="video-js vjs-default-skin vjs-big-play-centered" controls preload="auto" width="568" height="300" poster="img/video-cover.jpg" data-setup='{}'>
							<source src="http://vjs.zencdn.net/v/oceans.mp4" type="video/mp4" />
							<source src="http://vjs.zencdn.net/v/oceans.webm" type="video/webm" />
							<source src="http://vjs.zencdn.net/v/oceans.ogv" type="video/ogg" />
							<p class="vjs-no-js">To view this video please enable JavaScript, and consider upgrading to a web browser that <a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a></p>
						</video>
					</div>
					<p>..</p>
					<p>..</p>
			</div>
		</div>
	</section>
	<!-- END SECTION: Intro -->
	
	
	<!-- SECTION: Footer -->
	<footer class="has-padding footer-bg" style="padding: 1% 0;">
	
		<!-- <div class="container">
			<div class="row">
				<div class="col-md-4 footer-branding">
					//<img class="footer-branding-logo" src="img/xseed.png" alt="xseed">
					<p>A free website template</p>
				</div>
			</div> -->
			<!-- <div class="row">
				<div class="col-md-12 footer-nav">
					<ul class="footer-primary-nav">
						<li><a href="#intro">The Collective</a></li>
						<li><a href="#team">The Crew</a></li>
						<li><a href="#articles">Articles</a></li>
						<li><a href="#freebies">Freebies</a></li>
						<li><a href="#get-started">Subscribe</a></li>
					</ul>
					<ul class="footer-share">
						<li><a href="http://tympanus.net/codrops/licensing/">Licence</a></li>
						<li><a href="#" class="share-trigger"><i class="fa fa-share"></i>Share</a></li>
					</ul>
					<div class="share-dropdown">
						<ul>
							<li><a href="#" class="share-twitter"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#" class="share-facebook"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#" class="share-linkedin"><i class="fa fa-linkedin"></i></a></li>
						</ul>
					</div>
					<ul class="footer-secondary-nav">
						<li><p>A free website template</p></li>
					</ul>
				</div>
			</div>
		</div> -->
	</footer>
	<!-- END SECTION: Footer -->
	<!-- JS CDNs -->
	<script type="text/javascript" src="http://vjs.zencdn.net/5.4.6/video.min.js"></script>
	<!-- jQuery local fallback -->
	<script>
	window.jQuery || document.write('<script type="text/javascript" src="<%=request.getContextPath() %>/pages/js/min/jquery-1.11.2.min.js"><\/script>')
	</script>
	<!-- JS Locals -->
	<script type="text/javascript" src="<%=request.getContextPath() %>/pages/js/min/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/pages/js/min/modernizr-2.8.3-respond-1.4.2.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/pages/js/min/retina.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/pages/js/min/jquery.waypoints.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/pages/js/min/flickity.pkgd.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/pages/js/min/scripts-min.js"></script>
	<!-- Google Analytics: change UA-XXXXX-X to be your site's ID and uncomment -->
	<!--
	<script>
	(function(b, o, i, l, e, r) {
		b.GoogleAnalyticsObject = l;
		b[l] || (b[l] =
			function() {
				(b[l].q = b[l].q || []).push(arguments)
			});
		b[l].l = +new Date;
		e = o.createElement(i);
		r = o.getElementsByTagName(i)[0];
		e.src = '//www.google-analytics.com/analytics.js';
		r.parentNode.insertBefore(e, r)
	}(window, document, 'script', 'ga'));
	ga('create', 'UA-XXXXX-X', 'auto');
	ga('send', 'pageview');
	</script>
	-->
	<script type="text/javascript">
	function checkFile(){
		var check = document.getElementById("fileUpload").value;
		if(check==""){
			alert("Please browse template File.");
			return false;
		}
		else{
			return true;
		}
				
	}
	
	function login(){
		document.getElementById("signupdiv").style.display= 'none';
		document.getElementById("logindiv").style.display= 'block';
	}
	
	function signup(){
		document.getElementById("signupdiv").style.display= 'block';
		document.getElementById("logindiv").style.display= 'none';
	}
	
	function logincheck(){
		var usr = document.getElementById("user").value;
		var p = document.getElementById("pwd").value;

		// on click Sign In Button checks that username =='admin' and password == 'admin'
                  if(usr=='admin' && p=='admin') {
                 alert("Login Successfull"); 
           }
             else {
            	 
            	 document.getElementById("step1").style.display = 'none';
           		document.getElementById("step2").style.display = 'none';
           		document.getElementById("step3").style.display = 'none';
           		document.getElementById("steprow1").style.display = 'none';
          		document.getElementById("steprow2").style.display = 'none';
          		document.getElementById("steprow3").style.display = 'none';
          		document.getElementById("step4").style.display = 'block';
          		document.getElementById("steprow4").style.display = 'block';
             }

                  
	}
	
	
	
	</script>
</body>

</html>
