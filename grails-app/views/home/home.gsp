<head>
    <meta name="layout" content="main" />
</head>
<body>
    <!--section id="parallaxBar" data-speed="6" data-type="background" style="background-color: #FFCC33;">
        <div class="container-fluid">
        </div>
    </section-->
    <!--div class="parallax-window" data-parallax="scroll" data-image-src="${resource(dir: 'images', file: 'grails_logo.png')}"></div-->
    <div class="parallax-window" data-parallax="scroll" data-image-src="/liloca/static/images/IMG_1745.jpg"></div>

    <div class="container">

        <g:if test="${temasDestaque.size() >= 1}">
            <div class="row">
                <div class="col-xs-12">
                    <h2 class="title-box_primary text-center text-uppercase">Temas em Destaque!</h2>
                </div>
            </div>

            <div class="row">
                <g:each in="${temasDestaque}" var="tema">
                    <div class="col-xs-12 col-sm-4 col-md-4">
                        <li>
                            <div class="featured-thumbnail thumbnail">
                                <figure class="thumbnail">
                                    <a href="${resource(dir: 'images', file: 'img_1-338x268.jpg')}" rel="prettyPhoto" title="${tema.nome}">
                                        <img src="${tema.fotoCapa.url}" alt="Lorem ipsum dolor.">
                                    </a>
                                </figure>
                                <h3>
                                    <a href="#">
                                        ${tema.nome}
                                    </a>
                                </h3>
                            </div>
                        </li>
                    </div>
                </g:each>
            </div>
        </g:if>
        <div class="separador"></div>
        <div class="row">
            <h2 class="text-center">Lorem ipsum dolor sit amet</h2>
        </div>
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="thumbnail">
                    <h5 class="text-center">
                        <a href="etiam-cursus-leo-vel-metus/lorem-ipsum-dolor" title="" target="_self">
                            Free shipping <b>on orders over $30</b>
                        </a>
                    </h5>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.</p>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="thumbnail">
                    <h5 class="text-center">
                        <a href="etiam-cursus-leo-vel-metus/lorem-ipsum-dolor" title="" target="_self">
                            Free shipping <b>on orders over $30</b>
                        </a>
                    </h5>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.</p>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="thumbnail">
                    <h5 class="text-center">
                        <a href="etiam-cursus-leo-vel-metus/lorem-ipsum-dolor" title="" target="_self">
                            Free shipping <b>on orders over $30</b>
                        </a>
                    </h5>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.</p>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="thumbnail">
                    <h5 class="text-center">
                        <a href="etiam-cursus-leo-vel-metus/lorem-ipsum-dolor" title="" target="_self">
                            Free shipping <b>on orders over $30</b>
                        </a>
                    </h5>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.</p>
                </div>
            </div>
        </div>
    </div>
</body>

