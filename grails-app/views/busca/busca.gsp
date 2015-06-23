<head>
    <meta name="layout" content="main"/>
</head>

<body>
<div style="min-height: 250px"></div>

<div class="container">
    <div class="well well-lg">
        <g:formRemote name="buscaTema" url="[controller: 'busca', action: 'buscarTema']" update="updateMe">
            <g:textField name="nome" class="form-control"/>
        </g:formRemote>
    </div>

    <g:if test="${!temas.isEmpty()}">
        <div class="row" id="updateMe">
            <div class="col-xs-12">
                <h2 class="title-box_primary text-center text-uppercase">Temas Disponíveis!</h2>
            </div>

            <div class="row">
                <g:render template="/templates/fotos/temasCard" model="['tema': temas]"/>
            </div>
        </div>
    </g:if>

</div>
</body>
