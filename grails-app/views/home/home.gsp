<head>
    <meta name="layout" content="main" />
</head>
<body>
    <div class="parallax-window" data-parallax="scroll" data-image-src="/liloca/static/images/IMG_1745_2.jpg"></div>

    <div class="container">

        <g:if test="${!temas.isEmpty()}">
            <div class="row">
                <div class="col-xs-12">
                    <h2 class="title-box_primary text-center text-uppercase">Temas em Destaque!</h2>
                </div>
            </div>

            <div class="row">
                <g:each in="${temas}" var="tema">
                    <div class="col-xs-12 col-sm-4 col-md-4">
                    <g:if test="${tema.fotoCapa != null}">
                        <g:render template="/templates/fotos/temaCard" model="['tema': tema]"/>
                    </g:if>
                    </div>
                </g:each>
            </div>
        </g:if>
        <div class="separador"></div>
        <div class="row">
            <h2 class="text-center">Faça sua festa conosco!</h2>
        </div>
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-md-3 text-center">
                <div class="thumbnail">
                    <h5>
                        <img src="${resource(dir: 'images', file: 'icon_3.png')}">
                    </h5>
                    <b>Telefone</b>
                    <p>(21) 96468-8133</p>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-3 text-center">
                <div class="thumbnail">
                    <h5>
                        <img src="${resource(dir: 'images', file: 'icon_1.png')}">
                    </h5>
                    <b>E-mail</b>
                    <p>contato@liloca.com.br</p>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-3 text-center">
                <div class="thumbnail">
                    <h5>
                        <img src="${resource(dir: 'images', file: 'icon_2.png')}">
                    </h5>
                    <b>WhatsApp</b>
                    <p>(21) 96468-8133</p>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-3 text-center">
                <div class="thumbnail">
                    <h5>
                        <a target="_blank" href="http://facebook.com/festadaliloca"><img src="${resource(dir: 'images', file: 'icon_4.png')}"></a>
                    </h5>
                    <b>Curta no facebook</b>
                    <p>/festadaliloca</p>
                </div>
            </div>
        </div>
    </div>
</body>

