<%@ include file="/WEB-INF/views/include.jsp"%>
<html>

<head>
	
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	    <meta name="description" content="">
	    <meta name="author" content="">

    	<title>Delhoyo Webapp</title>

	    <!-- Bootstrap core CSS -->
	    <link href="/SpringMVCHibernate/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
	    <!-- Custom styles for this template -->
	    <link href="/SpringMVCHibernate/resources/css/modern-business.css" rel="stylesheet">
	    
	    
	    <!-- Bootstrap core JavaScript -->
	    <script src="/SpringMVCHibernate/resources/vendor/jquery/jquery.min.js"></script>
	    <script src="/SpringMVCHibernate/resources/vendor/popper/popper.min.js"></script>
	    <script src="/SpringMVCHibernate/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
	    
	    <!-- Contact form JavaScript -->
	    <!-- Do not edit these files! In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
	    <script src="resources/js/jqBootstrapValidation.js"></script>
	    <script src="resources/js/contact_me.js"></script>

</head>



<body>
	
	<!-- Navigation -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
        <a class="navbar-brand" href="<spring:url value ="/"/>">DelHoyo Webpage</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="<spring:url value ="/about"/>">About</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="<spring:url value ="/contact"/>">Contact</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Groefnia
                        </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                        <!-- <a class="dropdown-item" href="portfolio-1-col.html">1 Column Portfolio</a>
                        <a class="dropdown-item" href="portfolio-2-col.html">2 Column Portfolio</a> -->
                        <a class="dropdown-item" href="<spring:url value ="/translate-groefnish"/>">Groefnish Translate</a>
                        <a class="dropdown-item" href="<spring:url value ="/persons"/>">List of citizens</a>
                        <!-- <a class="dropdown-item" href="portfolio-item.html">Single Portfolio Item</a> -->
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Other Pages
                        </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                        <a class="dropdown-item" href="https://github.com/pdelho/">GitHub</a>
                        <a class="dropdown-item" href="https://www.hackerrank.com/pablodelhoyo">HackerRank</a>
                        <a class="dropdown-item" href="https://blackrockdigital.github.io/startbootstrap-modern-business">Website template</a>
                        <!-- <a class="dropdown-item" href="404.html">404</a>
                        <a class="dropdown-item" href="pricing.html">Pricing Table</a> -->
                    </div>
                </li>
            </ul>
        </div>
    </nav>
    
    
    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <h1 class="mt-4 mb-3">Contact <small>Subheading</small></h1>

        <ol class="breadcrumb">
            <li class="breadcrumb-item">
               	<a  href="<spring:url value ="/"/>">Home</a>
            </li>
            <li class="breadcrumb-item active">Contact</li>
        </ol>

        <!-- Content Row -->
        <div class="row">
            <!-- Map Column -->
            <div class="col-lg-8 mb-4">
                <!-- Embedded Google Map -->
                <iframe width="100%" height="400px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?hl=en&amp;ie=UTF8&amp;ll=40.4631,-3.8071&amp;spn=56.506174,79.013672&amp;t=m&amp;z=4&amp;output=embed"></iframe>
            </div>
            <!-- Contact Details Column -->
            <div class="col-lg-4 mb-4">
                <h3>Contact Details</h3>
                <p>
                    Madrid<br>
                    Spain<br>
                </p>
                <!-- <p>
                    <abbr title="Phone">P</abbr>: (123) 456-7890
                </p> -->
                <p>
                    <abbr title="Email">E</abbr>: <a href="mailto:pablodelhoyo@gmail.com">pablodelhoyo@gmail.com
                    </a>
                </p>
                <!-- <p>
                    <abbr title="Hours">H</abbr>: Monday - Friday: 9:00 AM to 5:00 PM
                </p> -->
            </div>
        </div>
        <!-- /.row -->

        <!-- Contact Form -->
        <!-- In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
        <div class="row">
            <div class="col-lg-8 mb-4">
                <h3>Send us a Message</h3>
                <form name="sentMessage" id="contactForm" novalidate>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>Full Name:</label>
                            <input type="text" class="form-control" id="name" required data-validation-required-message="Please enter your name.">
                            <p class="help-block"></p>
                        </div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>Phone Number:</label>
                            <input type="tel" class="form-control" id="phone" required data-validation-required-message="Please enter your phone number.">
                        </div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>Email Address:</label>
                            <input type="email" class="form-control" id="email" required data-validation-required-message="Please enter your email address.">
                        </div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>Message:</label>
                            <textarea rows="10" cols="100" class="form-control" id="message" required data-validation-required-message="Please enter your message" maxlength="999" style="resize:none"></textarea>
                        </div>
                    </div>
                    <div id="success"></div>
                    <!-- For success/fail messages -->
                    <button type="submit" class="btn btn-primary">Send Message</button>
                </form>
            </div>

        </div>
        <!-- /.row -->

    </div>
    
    
    <!-- Footer -->
    <footer class="py-5 bg-dark">
        <div class="container">
        <p class="m-0 text-center text-white">2017</p>
        </div>
    </footer>
</body>
</html>