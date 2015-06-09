<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>Festa da Liloca | Decoração de festas infantis</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">

        <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">

        <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery-1.11.3.min.js')}"></script>
        <script type="text/javascript" src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
        <script type="text/javascript" src="${resource(dir: 'js', file: 'parallax.min.js')}"></script>

		<g:layoutHead/>

		<g:javascript library="application"/>		
		<r:layoutResources />
	</head>
	<body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">
                        <img id="logo" src="${resource(dir: 'images', file: 'logo.png')}">
                    </a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <form class="navbar-form navbar-right">
                        <div class="form-group">
                            <input id="navbarEmail" type="text" placeholder="Email" class="form-control">
                        </div>
                        <div class="form-group">
                            <input id="navbarPass" type="text" placeholder="Password" class="form-control">
                        </div>
                        <button type="submit" class="btn btn-success">Sign in</button>
                    </form>
                </div><!--/.navbar-collapse -->
            </div>
        </nav>


		<g:layoutBody/>



		<div class="footer" role="contentinfo"></div>

        <div id="spinner" class="spinner" style="display:none;">
            <g:message code="spinner.alt" default="Loading&hellip;"/>
        </div>

        <footer class="footer">
            <div class="container">
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <div class="row">
                    <div class="separador"></div>
                </div>
                <br>
                <div class="row text-center">
                    <div class="span12 social-nets-wrapper" data-motopress-type="static" data-motopress-static-file="static/static-social-networks.php">
                        <ul class="social">
                            <li>
                                <a href="#" title="facebook">
                                    <img src="${resource(dir: 'images/social', file: 'facebook.png')}" alt="facebook">
                                </a>
                            </li>
                            <li>
                                <a href="#" title="twitter">
                                    <img src="${resource(dir: 'images/social', file: 'twitter.png')}" alt="twitter">
                                </a>
                            </li>
                            <li>
                                <a href="#" title="google">
                                    <img src="${resource(dir: 'images/social', file: 'google.png')}" alt="google">
                                </a>
                            </li>
                            <li>
                                <a href="#" title="youtube">
                                    <img src="${resource(dir: 'images/social', file: 'youtube.png')}" alt="youtube">
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="row text-center">
                    <div class="span12" data-motopress-type="static" data-motopress-static-file="static/static-footer-text.php">
                        <div id="footer-text" class="footer-text">
                                <a href="${link(controller: "home", action: "index")}" title="Liloca Festas - Decoração de festa infatil" class="site-name">Liloca Festas</a> © 2015 Todos direitos reservados <i>|</i> <a href="" title="Política de Privacidade">Política de Privacidade</a>
                        </div> </div>
                </div>

            </div>
        </footer>
		<r:layoutResources />
	</body>
</html>
