<head>
    <meta name="layout" content="main" />

    <g:render template="/templates/fotos/scriptLightBox" />
</head>
<body>
<div style="min-height: 250px"></div>

<div class="container">
    <div class="row text-center">
        <h1>${tema.nome}</h1>
    </div>
    <div class="row">
        <div class="col-xs-12 col-sm-6 col-md-5">
            <li>
                <div class="featured-thumbnail thumbnail">
                    <figure class="thumbnail">
                        <g:link controller="detalhe" action="index" params="[id: tema.id]">
                            <img src="${tema.fotoCapa.url}" alt="Lorem ipsum dolor.">
                        </g:link>
                    </figure>
                    <div class="row">
                        <div class="col-xs-8 col-sm-8 col-md-8">
                            <h3>
                                <g:link controller="detalhe" action="index" params="[id: tema.id]">
                                    ${tema.nome}
                                </g:link>
                            </h3>
                        </div>
                        <div class="col-xs-4 col-sm-4 col-md-4">
                            <a href="#" rel="prettyPhoto${tema.nomeMinificado}" title="${tema.nome}">
                                <span class="glyphicon glyphicon-plus" >fotos</span>
                            </a>
                        </div>
                    </div>
                </div>
            </li>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-7">
            <g:each in="${tema.decoracoes}" var="decoracao">
                <div class="row">
                    <h3>${decoracao.nome}</h3>
                </div>
                <div class="row">
                    <ul>
                    <g:each in="${decoracao.propriedades}" var="propriedade">
                        <li>${propriedade.descricao}</li>
                    </g:each>
                    </ul>
                </div>
            </g:each>
        </div>
    </div>
</div>
</body>
