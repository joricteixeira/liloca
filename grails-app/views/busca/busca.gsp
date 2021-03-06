<head>
    <meta name="layout" content="main"/>
</head>

<body>
<div style="min-height: 150px"></div>

<div class="container">
    <div class="well well-lg">
        <div class="row">
            %{--<g:formRemote name="buscarTema" update="updateMe"
                          before="jQuery('#loadingGif').attr('style','display: block')"
                          onComplete="jQuery('#loadingGif').attr('style','display: none')"
                          url="[controller: 'busca',
                                action: 'buscarTema']">--}%
            <g:form url="/tema">

                <div class="col-xs-12 col-sm-6 col-md-6">
                    <g:textField id="digitado" name="nome" class="form-control" placeholder="Busque por um tema...">
                    </g:textField>
                </div>

                <div class="col-xs-11 col-sm-5 col-md-5">
                    <select id="myselect" name="tipoOrdenacao" class="form-control">
                        <g:each in="${ordenacoesBusca}" var="ordenacao">
                            <option value="${ordenacao.identificador}">Ordenar por: ${ordenacao.valorExibicao}</option>
                        </g:each>

                    </select>
                </div>
                <div class="col-xs-1 col-sm-1 col-md-1">
                    <input type="submit" value="Buscar" class="btn btn-danger">
                </div>

            </g:form>
        </div>
    </div>

    <img src="${resource(dir: 'images', file: 'ajax_loader_blue_512.gif')}" style="display: none" id="loadingGif" width="100" height="100">
    <div class="row" id="updateMe">
        <g:if test="${!temas.isEmpty()}">

                <div class="col-xs-12">
                    <h2 class="title-box_primary text-center text-uppercase">Temas Disponíveis!</h2>
                </div>

                <div class="row">
                    <g:render template="/templates/fotos/temasCard" model="['tema': temas]"/>
                </div>

        </g:if>
    </div>

</div>
</body>
