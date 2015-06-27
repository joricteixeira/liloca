<head>
    <meta name="layout" content="main"/>
</head>

<body>
<div style="min-height: 150px"></div>

<div class="container">
    <div class="well well-lg">
        <div class="row">
            <g:formRemote name="buscarTema" update="updateMe"
                          url="[controller: 'busca',
                                action: 'buscarTema']">
                <div class="col-xs-12 col-sm-6 col-md-6">
                    <g:textField id="digitado" name="nome" class="form-control" placeholder="Busque por um tema..."
                                 onkeyup="${remoteFunction(
                                         controller: 'busca',
                                         action: 'buscarTema',
                                         update: 'updateMe',
                                         params: '\'nome=\' + this.value + \'&tipoOrdenacao=\' + $("#myselect option:selected").text()',
                                         before:"jQuery('#loadingGif').attr('style','display: block')",
                                         onComplete:"jQuery('#loadingGif').attr('style','display: none')"
                                 )}">
                    </g:textField>
                </div>

                <div class="col-xs-12 col-sm-6 col-md-6">
                    <select id="myselect" name="tipoOrdenacao" class="form-control"
                            onchange="${remoteFunction(
                                        controller: 'busca',
                                        action: 'buscarTema',
                                        update: 'updateMe',
                                        params: '\'tipoOrdenacao=\' + this.value + \'&nome=\' + $(\'#digitado\').val()',
                                        before:"jQuery('#loadingGif').attr('style','display: block')",
                                        onComplete:"jQuery('#loadingGif').attr('style','display: none')"
                            )}">
                        <option>Ordenar por...</option>
                        <option>Ordenar por: Nome [A - Z]</option>
                        <option>Ordenar por: Nome [Z - A]</option>
                    </select>
                </div>
            </g:formRemote>
        </div>
    </div>

    <g:if test="${!temas.isEmpty()}">
        <img src="${resource(dir: 'images', file: 'ajax_loader_blue_512.gif')}" style="display: none" id="loadingGif" width="100" height="100">
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
