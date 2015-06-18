<head>
    <meta name="layout" content="main"/>
</head>

<body>
<div style="min-height: 250px"></div>

<div class="container">
    <div class="well well-lg">
        <g:formRemote name="buscaTema" url="[controller: 'busca', action: 'buscarTema']">
            <g:textField name="nome" class="form-control"/>
        </g:formRemote>
    </div>

    <g:if test="${!temas.isEmpty()}">
        <div class="row">
            <div class="col-xs-12">
                <h2 class="title-box_primary text-center text-uppercase">Temas Disponíveis!</h2>
            </div>
        </div>

        <div class="row">
            <g:each in="${temas}" var="tema">
                <div class="col-xs-12 col-sm-4 col-md-4">
                    <g:if test="${tema.fotoCapa != null}">
                        <li>
                            <div class="featured-thumbnail thumbnail">
                                <figure class="thumbnail">
                                    <a href="#" rel="prettyPhoto${tema.nomeMinificado}" title="${tema.nome}">
                                        <img src="${tema.fotoCapa.url}" alt="Lorem ipsum dolor.">
                                    </a>
                                </figure>

                                <h3 class="text-center">
                                    <a href="#">
                                        ${tema.nome}
                                    </a>
                                </h3>
                            </div>
                        </li>
                    </g:if>
                </div>
            </g:each>
        </div>
    </g:if>

</div>
</body>
