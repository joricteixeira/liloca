<head>
    <meta name="layout" content="mainAdmin" />
</head>
<body>
<div style="min-height: 80px"></div>

<div class="container">
    <div class="row text-center">
        <h1>${tema.nome}</h1>
    </div>
    <div class="row">
        <div class="col-xs-12 col-sm-6 col-md-5">
            <li class="no-decoration">
                <div class="featured-thumbnail thumbnail">
                    <figure class="thumbnail">
                        <a href="#" rel="prettyPhoto${tema.nomeMinificado}" title="${tema.nome}">
                            <img src="${tema.fotoCapa.url}" alt="Lorem ipsum dolor.">
                        </a>
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
                            <a href="#" rel="prettyPhoto${tema.nomeMinificado}" title="${tema.nome}" class="saibamais">
                                mais fotos
                            </a>
                        </div>
                    </div>
                </div>
            </li>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-7">
            <g:each in="${tema.decoracoes}" var="decoracao">
                <div class="row seccionado">
                    <h4>Decoração ${decoracao.nome} - <g:formatNumber number="${decoracao.valor}" type="currency" currencyCode="BRL" maxFractionDigits="2" minFractionDigits="2"/></h4>
                </div>
                <div class="row">
                    <ul style="padding-top: 10px">
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
