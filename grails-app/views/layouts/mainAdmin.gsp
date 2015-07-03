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
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'styleAdmin.css')}" type="text/css">

    <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery-1.11.3.min.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>

    <link href='http://fonts.googleapis.com/css?family=Rum+Raisin' rel='stylesheet' type='text/css'>

    <g:layoutHead/>

    <g:javascript library="application"/>
    <r:layoutResources/>

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

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <ul class="nav nav-sidebar">
                <li class="active"><a href="${createLink(controller: 'dashBoard', action: 'index')}">Dashboard<span class="sr-only">(current)</span></a></li>
                <li><a href="${createLink(controller: 'tema', action: 'listar')}">Listar Temas<span class="sr-only">(current)</span></a></li>
                <li><a href="${createLink(controller: 'dashBoard', action: 'index')}">Mensagens Não Lidas<span class="sr-only">(current)</span></a></li>
                <li><a href="${createLink(controller: 'dashBoard', action: 'mensagensEnviadas')}">Mensagens Enviadas<span class="sr-only">(current)</span></a></li>
            </ul>
        </div>

        <div class="col-sm-9 col-sm-offset-0 col-md-10 col-md-offset-2 main">
            <g:layoutBody/>
        </div>
    </div>
</div>
<r:layoutResources/>
</body>
</html>
