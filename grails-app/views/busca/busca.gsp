<head>
    <meta name="layout" content="main"/>
</head>

<body>
<div style="min-height: 250px"></div>

<div class="container">
    <div class="well well-lg">
        <g:formRemote name="buscaTema" on404="alert('not found!')" url="[controller: 'busca', action: 'buscarTema']" update="updateMe">
            <g:textField name="nome" class="form-control"/>
        </g:formRemote>
    </div>

    <g:if test="${!temas.isEmpty()}">
        <div class="row">
            <div class="col-xs-12">
                <h2 class="title-box_primary text-center text-uppercase">Temas Disponíveis!</h2>
            </div>
        </div>

        <div class="row" id="updateMe">
            <g:each in="${temas}" var="tema">
                <div class="col-xs-12 col-sm-4 col-md-4">
                    <g:if test="${tema.fotoCapa != null}">
                        <g:render template="/templates/fotos/temaCard" model="['tema': tema]"/>
                    </g:if>
                </div>
            </g:each>
        </div>
    </g:if>

</div>
</body>
