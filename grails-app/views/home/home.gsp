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

                if($window.scrollTop() > 450){
                    jQuery("#logo").attr("width","70");
                    jQuery(".navbar-brand").attr("style","padding: 5px");
                }else if(($window.scrollTop() > 1) && ($window.scrollTop() < 450)){
                    jQuery("#logo").attr("width","100");
                    jQuery(".navbar-brand").attr("style","padding: 10px");
                }else{
                    jQuery("#logo").attr("width","188");
                    jQuery(".navbar-brand").attr("style","padding: 15px");
                }


                /*
                var yPos = -($window.scrollTop() / $scroll.data('speed'));
                var coords = '50% '+ yPos + 'px';
                $scroll.css({ backgroundPosition: coords });
                */
            });

        });
    </script>

</head>
<body>
    <section id="parallaxBar" data-speed="6" data-type="background">
        <div class="container-fluid">
        </div>
    </section>

    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <h2 class="title-box_primary text-center">Temas em Destaque!</h2>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-12 col-md-4">
                <li>
                    <div class="featured-thumbnail thumbnail">
                        <figure class="thumbnail">
                            <img src="http://livedemo00.template-help.com/wordpress_50935/wp-content/uploads/2014/07/img_1-338x268.jpg" alt="Lorem ipsum dolor.">
                        </figure>
                        <h5>Titulo</h5>
                    </div>
                </li>
            </div>
            <div class="col-xs-12 col-md-4">
                <li>
                    <div class="featured-thumbnail thumbnail">
                        <figure class="thumbnail">
                                <img src="http://livedemo00.template-help.com/wordpress_50935/wp-content/uploads/2014/07/img_1-338x268.jpg" alt="Lorem ipsum dolor.">
                        </figure>
                    </div>
                </li>
            </div>
            <div class="col-xs-12 col-md-4">
                <li>
                    <div class="featured-thumbnail thumbnail">
                        <figure class="thumbnail">
                            <img src="http://livedemo00.template-help.com/wordpress_50935/wp-content/uploads/2014/07/img_1-338x268.jpg" alt="Lorem ipsum dolor.">
                        </figure>
                    </div>
                </li>
            </div>
        </div>











    </div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>



</body>
