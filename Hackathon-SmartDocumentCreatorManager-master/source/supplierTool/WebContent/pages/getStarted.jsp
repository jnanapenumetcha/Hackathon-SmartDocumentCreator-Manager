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
	
	<script type="text/javascript">
	function enableStep1(){
		document.getElementById("step1").style.display = 'block';
		document.getElementById("step2").style.display = 'none';
		document.getElementById("step3").style.display = 'none';
		//document.getElementById("logindiv").style.display = 'block';
		//document.getElementById("signupdiv").style.display = 'none';
		document.getElementById("steprow1").style.display = 'block';
		document.getElementById("steprow2").style.display = 'block';
		document.getElementById("steprow3").style.display = 'block';
		document.getElementById("steprow4").style.display = 'none';
	}
	function enableStep2(){
		document.getElementById("step1").style.display = 'none';
		document.getElementById("step2").style.display = 'block';
		document.getElementById("step3").style.display = 'none';
	}
	function enableStep3(){
		document.getElementById("step1").style.display = 'none';
		document.getElementById("step2").style.display = 'none';
		document.getElementById("step3").style.display = 'block';
	}
	</script>
	
</head>

<body onload="javascript:enableStep1()">
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
							<li><a href="<%=request.getContextPath() %>/getdocsPage">Your Documents</a></li>
						</ul>
					</nav>
					<div class="secondary-nav-wrapper">
						<ul class="secondary-nav">
							<li class="subscribe"><a href="<%=request.getContextPath() %>/pages/signup.jsp">Logout</a></li>
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
	
<footer class="has-padding footer-bg" style="padding: 1% 0;">
	
		
	</footer>
	
	<!-- SECTION: Freebies -->
	<section class="freebies" id="getStarted">

		<div class="container freebies-intro" style="padding-top: 2%;margin-bottom:30px;">
			<div class="row">
				<div class="col-md-12">
					<h4 style="margin: 7px 0 30px 60px">Get Started</h4>
				</div>
			</div>
			<div class="row">
				<div id="steprow1" class="col-md-6 content-left"
					style="width: 33%; display: none;">
					<p style="cursor: pointer;">
						<a onclick="enableStep1()">Step1: Upload your doc template</a>
					</p>
				</div>
				<div id="steprow2" class="col-md-6 content-right"
					style="width: 33%; display: none;">
					<p style="cursor: pointer;">
						<a onclick="enableStep2()">Step2: Configure your rules</a>
					</p>
				</div>
				<div id="steprow3" class="col-md-6 content-right"
					style="width: 33%; display: none;">
					<p style="cursor: pointer;">
						<a onclick="enableStep3()">Step3: Generate documents</a>
					</p>
				</div>
				<div id="steprow4" class="col-md-6 content-right"
					style="width: 33%; display: none;">
					<p style="cursor: pointer;">Fill Details</p>
				</div>
			</div>
		</div>
		<div class="container-fluid" style="width: 100%">
			<div class="row">
				<div class="col-md-6 no-padding" style="width: 100%">
					<article class="item wp5">
						<div id="step1" style="display: none">
							<s:form action="resultAction" namespace="/" method="post"
								enctype="multipart/form-data" theme="simple">


								<div
									style="text-align: center; padding-top: 3%; padding-bottom: 5%; font-size: 20px; color: white;">
									<div style="color: green;">
										<s:property value="message" />
									</div>
									<br>
									<br>
									<p style="font-size: 20px; color: white;">Select the file to get started</p>

									<br>
									<br>
									<div style="padding-left: 10%;padding-right: 10%">
									<div style="float: left"><s:file id="fileUpload" name="fileUpload" /></div>
										OR
										<div style="float: right;"><p style="font-size: 20px; color: white;">Select from available templates</p>
										<s:select id="template" cssStyle="color:black" headerKey="-1" headerValue="Select templates"
														list="usertemplates" name="yourColumn" /></div>
										
									</div>
									<br>
									<br>
									<br>
									<div style="padding-top: 2%;padding-left: 10%">
									<s:submit value="Upload" cssClass="btn primary wp2"
										onclick="return checkFile();" />
									</div>

								</div>
								<div>
								</div>
							</s:form>
						</div>
						<div id="step2"
							style="display: none; width: 80%; padding-left: 25%; padding-top: 5%; padding-bottom: 10%; color: white;">

							<div class="wrapper1">
							
							<s:form theme="simple">
								<div class="table1">
									<div class="row1 header1 blue">
										<div class="cell1">Template Keywords</div>
										<div class="cell1">Database Columns</div>
										<div class="cell1">Edit Or Delete</div>
									</div>
									<s:if test="documents.size() > 0">
										<s:iterator value="documents" status="cnt" var="user">
											<div class="row1">

												<div class="cell1"><input style="color: rgb(66, 137, 244)"
													type='text' value='<s:property value="#user.key"/>' /></div>
												<div class="cell1">
													<!--  <input style="color: rgb(66, 137, 244)" type='text' value='<s:property value="#user.db"/>'/>-->
													<s:select headerKey="-1" headerValue="Select Columns" cssStyle="color: rgb(66, 137, 244)"
														list="userdocuments" name="yourColumn" />
												</div>

												<div class="cell1">
													<button style="background: rgb(66, 137, 244); color: #fff;">Edit</button>
													<button style="background: rgb(66, 137, 244); color: #fff;">Delete</button>
												</div>
											</div>
										</s:iterator>
									</s:if>
								</div>
							</s:form>

						
						</div>



						</div>
						<div id="step3" style="display: none">
							<s:form action="generateAction" namespace="/" method="post"
								theme="simple">


								<div
									style="text-align: center; padding-top: 10%; padding-bottom: 10%; font-size: 20px; color: white;">

									<p style="font-size: 20px; color: white;">Generate files
										based on template</p>


									<s:submit value="Generate" cssClass="btn primary wp2"
										onclick="return checkFile();" />

								</div>
							</s:form>
						</div>
						<div class="form-signin" id="step4" style="display: none">
							First Name<input "text" class="form-control" name="firstname"
								required="" autofocus=""></input> <br> Last Name<input
								type="text" class="form-control" name="lastname" required=""
								autofocus=""></input> <br> E-mail<input type="text"
								id="user" class="form-control" name="username"
								placeholder="Email Address" required="" autofocus="" /> <br>
							Password<input type="password" class="form-control"
								name="password" placeholder="Password" required=""></input> <br>
							Phone Number<input type="text" class="form-control" name="number"
								required=""></input> <br>
							<!-- Address<input type="text" class="form-control" name="address" placeholder="Address,City,State,Zip" required="" autofocus=""></input>
				     <br> -->
							Address : Street <span class="inlineinput"> <input
								type='text' style='display: inline; width: 20%;' />
							</span> City <span class="inlineinput"> <input type='text'
								style='display: inline; width: 20%;' />
							</span> State <span class="inlineinput"> <input type='text'
								style='display: inline; width: 20%;' />
							</span> Zip <span class="inlineinput"> <input type='text'
								style='display: inline; width: 20%;' />
							</span> <br> <br> <br>
							<fieldset data-role="controlgroup" data-type="horizontal">

								<legend>Choose your gender:</legend>
								<label for="male">Male</label> <input type="radio" name="gender"
									id="male" value="male"> <label for="female">Female</label>
								<input type="radio" name="gender" id="female" value="female">
							</fieldset>
							<br> <br> Secondary Email Address<input type="text"
								id="user" class="form-control" name="username1"
								placeholder="Secondary Email Address" required="" autofocus="" />
							<br>
							<button class="btn btn-lg btn-primary btn-block" type="submit"
								onclick="login()">Submit</button>

						</div>
					</article>
				</div>
			</div>
		</div>

	</section>

	<!-- SECTION: Footer -->
	<footer class="has-padding footer-bg" style="padding: 1% 0;">
	
		
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
		var check1 = document.getElementById("template").value;
		if(check=="" && check1=="-1"){
			alert("Please browse template File or Select template from dropdown");
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