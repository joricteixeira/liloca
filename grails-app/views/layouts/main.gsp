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
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'lazy-load.css')}" type="text/css">

        <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery-1.11.3.min.js')}"></script>
        <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery-1.7.2.min.js')}"></script>
        <script type="text/javascript" src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
        <script type="text/javascript" src="${resource(dir: 'js', file: 'parallax.min.js')}"></script>
        <script type="text/javascript" src="${resource(dir: 'js', file: 'cherry.lazy-load.js')}"></script>
        <script type="text/javascript" src="${resource(dir: 'js', file: 'device.min.js')}"></script>

        <!-- LightBox -->
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'magnific-popup.css')}" type="text/css">
        <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.magnific-popup.min.js')}"></script>

        <link href='http://fonts.googleapis.com/css?family=Rum+Raisin' rel='stylesheet' type='text/css'>

        <!-- TODO este script deve ser gerado dinamicamente -->
        <!--script type="text/javascript">
            $(document).ready(function() {
                $("[rel^='prettyPhoto']").magnificPopup({
                    items: [
                        {
                            src: '${resource(dir: 'images', file: 'callout_1.jpg')}'
                        },
                        {
                            src: '${resource(dir: 'images', file: 'callout_2.jpg')}'
                        }
                    ],
                    gallery: {
                        enabled: true
                    },
                    type:'image'
                });
            });
        </script-->


    <script>
        $(document).ready(function(){
            $window = $(window);
            //Captura cada elemento section com o data-type "background"
            $('section[data-type="background"]').each(function(){
                var $scroll = $(this);
                //Captura o evento scroll do navegador e modifica o backgroundPosition de acordo com seu deslocamento.
                $(window).scroll(function() {
                    var yPos = -($window.scrollTop() / $scroll.data('speed'));
                    var coords = '50% '+ yPos + 'px';
                    $scroll.css({ backgroundPosition: coords });
                });
            });
        });
    </script>

    %{--
    <script>
        $(document).ready(function(){
            $window = $(window);
            //Captura cada elemento section com o data-type "background"
            //Captura o evento scroll do navegador e modifica o backgroundPosition de acordo com seu deslocamento.
            $(window).scroll(function() {
                if(($window.scrollTop() > 200) && ($window.scrollTop() < 300)){
                    var larguraImagem = (-1.2)*($window.scrollTop()) + 430;
                    var paddingImagem = ((0.1)*($window.scrollTop()) - 35)*(-1) - 1;

                    $("#logo").attr("width",larguraImagem);
                    $(".navbar-brand").attr("style","padding: "+ paddingImagem+"px");

                }else if($window.scrollTop() > 300){
                    $("#logo").attr("width","70");
                    $(".navbar-brand").attr("style","padding: 5px");
                }else if($window.scrollTop() < 200){
                    $("#logo").attr("width","190");
                    $(".navbar-brand").attr("style","padding: 15px");
                }

                /*
                 -1,2s + 430 = w
                 100
                 */



                /*
                 var yPos = -($window.scrollTop() / $scroll.data('speed'));
                 var coords = '50% '+ yPos + 'px';
                 $scroll.css({ backgroundPosition: coords });
                 */
            });

        });
    </script>
    --}%

		<g:layoutHead/>

		<g:javascript library="application"/>
		<r:layoutResources />

        <g:render template="/templates/fotos/scriptLightBox" />
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
                    <a class="navbar-brand" href="${createLink(controller: 'home', action: 'index')}">
                        <img id="logo" src="${resource(dir: 'images', file: 'logo.png')}" width="110" height="110">
                    </a>

                </div>

                <div id="navbar" class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li>
                            <g:link controller="home" action="index" class="linkCabecalho">Home</g:link>
                        </li>
                        <li>
                            <g:link controller="busca" action="index" class="linkCabecalho">Todos os Temas</g:link>
                        </li>
                    </ul>
                </div>

            </div>
        </nav>


		<g:layoutBody/>



		<div class="footer" role="contentinfo"></div>

        <div id="spinner" class="spinner" style="display:none;">
            <g:message code="spinner.alt" default="Loading&hellip;"/>
        </div>

        <footer class="footer">
            <div class="container">
                <div class="row text-center">
                    <div class="col-xs-12 col-sm-6 col-md-6 text-center"></div>
                    <div class="col-xs-12 col-sm-6 col-md-6 text-center"></div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-6 text-center">
                        <img src="${resource(dir: 'images', file: 'logo.png')}">
                        <h2>Em breve, novidades!</h2>
                    </div>

                    <div id="retorno-envio" class="col-xs-12 col-sm-6 col-md-6">
                        <g:if test="${((mensagemEnvio != "") && (mensagemEnvio != null))}">

                            <div
                                <g:if test="${sucessoEnvio}">class="alert alert-success"</g:if>
                                <g:else>class="alert alert-danger"</g:else>
                                role="alert">
                                ${mensagemEnvio}
                            </div>

                        </g:if>
                        <h3 class="text-center" style="padding: 10px">Fale Conosco</h3>
                        <g:render template="/mail/formulario" />
                    </div>
                </div>


                <div class="row">
                    <div class="separador"></div>
                </div>
                <br>
                <div class="row text-center">
                    <div class="span12 social-nets-wrapper" data-motopress-type="static" data-motopress-static-file="static/static-social-networks.php">
                        <ul class="social">
                            <li>
                                <a target="_blank" href="https://www.facebook.com/festadaliloca" title="facebook">
                                    <img src="${resource(dir: 'images/social', file: 'facebook.png')}" alt="facebook">
                                </a>
                            </li>
                            <!--li>
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
                            </li-->
                        </ul>
                    </div>
                </div>

                <div class="row text-center">
                    <div class="span12" data-motopress-type="static" data-motopress-static-file="static/static-footer-text.php">
                        <div id="footer-text" class="footer-text">
                                <a href="${resource(controller: "home", action: "index")}" title="Liloca Festas - Decoração de Festa Infantil" class="site-name">Liloca Festas</a> © 2015 Todos direitos reservados <!--i>|</i> <a href="" title="Política de Privacidade">Política de Privacidade</a-->
                        </div> </div>
                </div>

            </div>
        </footer>
		<r:layoutResources />
	</body>
</html>
