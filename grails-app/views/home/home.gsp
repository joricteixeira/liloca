<head>
    <meta name="layout" content="main"/>
</head>
<body>
<div class="parallax-window" data-parallax="scroll" data-image-src="${resource(dir: 'images', file: 'IMG_1745_2.jpg')}">
</div>
<div class="container">
    <g:if test="${!temas.isEmpty()}">
        <div class="row">
            <div class="col-xs-12">
                <h2 class="title-box_primary text-center text-uppercase">Temas em Destaque!</h2>
            </div>
        </div>
        <div class="row">
            <g:render template="/templates/fotos/temasCard" model="['tema': temas]"/>
        </div>
    </g:if>
    <div class="separador"></div>
    <div class="row">
        <h2 class="text-center">Faça sua festa conosco!</h2>
    </div>
    <div class="row">
        <div class="col-xs-12 col-sm-6 col-md-3 text-center">
            <div class="lazy-load-box trigger effect-slidefromleft" data-delay="0" data-speed="600"
                 style="-webkit-transition: all 600ms ease; -moz-transition: all 600ms ease; -ms-transition: all 600ms ease; -o-transition: all 600ms ease; transition: all 600ms ease;">
                <div class="banner-wrap banner_1 effect-slidefromleft">
                    <h5>
                        <img src="${resource(dir: 'images', file: 'icon_3.png')}">
                    </h5>
                    <b>Telefone</b>
                    <p>(21) 96468-8133</p>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3 text-center">
            <div class="lazy-load-box trigger effect-fade" data-delay="200" data-speed="500"
                 style="-webkit-transition: all 600ms ease; -moz-transition: all 600ms ease; -ms-transition: all 600ms ease; -o-transition: all 600ms ease; transition: all 600ms ease;">
                <div class="banner-wrap banner_1 effect-fade">
                    <h5>
                        <img src="${resource(dir: 'images', file: 'icon_1.png')}">
                    </h5>
                    <b>E-mail</b>
                    <p>contato@liloca.com.br</p>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3 text-center">
            <div class="lazy-load-box trigger effect-zoomin" data-delay="0" data-speed="600"
                 style="-webkit-transition: all 600ms ease; -moz-transition: all 600ms ease; -ms-transition: all 600ms ease; -o-transition: all 600ms ease; transition: all 600ms ease;">
                <div class="banner-wrap banner_1 effect-zoomin">
                    <h5>
                        <img src="${resource(dir: 'images', file: 'icon_2.png')}">
                    </h5>
                    <b>WhatsApp</b>
                    <p>(21) 96468-8133</p>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3 text-center">
            <div class="lazy-load-box trigger effect-slidefromright" data-delay="0" data-speed="600"
                 style="-webkit-transition: all 600ms ease; -moz-transition: all 600ms ease; -ms-transition: all 600ms ease; -o-transition: all 600ms ease; transition: all 600ms ease;">
                <div class="banner-wrap banner_1 effect-slidefromright">
                    <h5>
                        <a target="_blank" href="http://facebook.com/festadaliloca"><img src="${resource(dir: 'images', file: 'icon_4.png')}"></a>
                    </h5>
                    <b>Curta no facebook</b>
                    <p>/festadaliloca</p>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

