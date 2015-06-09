<head>
    <meta name="layout" content="main" />
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

    <script>
        $(function() {
            // Handler for .ready() called.
            //$('.parallax-window').parallax({imageSrc: 'http://livedemo00.template-help.com/wordpress_50935/wp-content/uploads/2014/07/slide_1.jpg'});

        });
    </script>


</head>
<body>
    <!--section id="parallaxBar" data-speed="6" data-type="background" style="background-color: #FFCC33;">
        <div class="container-fluid">
        </div>
    </section-->
    <!--div class="parallax-window" data-parallax="scroll" data-image-src="${resource(dir: 'images', file: 'grails_logo.png')}"></div-->
    <div class="parallax-window" data-parallax="scroll" data-image-src="${resource(dir: 'images', file: 'callout_1.jpg')}"></div>

    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <h2 class="title-box_primary text-center">Temas em Destaque!</h2>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-12 col-sm-4 col-md-4">
                <li>
                    <div class="featured-thumbnail thumbnail">
                        <figure class="thumbnail">
                            <img src="${resource(dir: 'images', file: 'img_1-338x268.jpg')}" alt="Lorem ipsum dolor.">
                        </figure>
                        <h5>Titulo</h5>
                    </div>
                </li>
            </div>
            <div class="col-xs-12 col-sm-4 col-md-4">
                <li>
                    <div class="featured-thumbnail thumbnail">
                        <figure class="thumbnail">
                                <img src="${resource(dir: 'images', file: 'img_1-338x268.jpg')}" alt="Lorem ipsum dolor.">
                        </figure>
                    </div>
                </li>
            </div>
            <div class="col-xs-12 col-sm-4 col-md-4">
                <li>
                    <div class="featured-thumbnail thumbnail">
                        <figure class="thumbnail">
                            <img src="${resource(dir: 'images', file: 'img_1-338x268.jpg')}" alt="Lorem ipsum dolor.">
                        </figure>
                    </div>
                </li>
            </div>
        </div>
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

