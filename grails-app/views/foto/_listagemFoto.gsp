<div class="row" style="padding-top: 15px">
    <g:each in="${fotos}" var="foto">
        <div class="col-xs-12 col-sm-4 col-md-3">
        <g:if test="${foto.isCapa}">
            <div class="featured-thumbnail thumbnail" style="background: #FFFFAA">
        </g:if>
        <g:else>
            <div class="featured-thumbnail thumbnail">
        </g:else>
        <figure class="thumbnail">
            <a href="#" rel="prettyPhoto${foto.nomeMinificado}" title="${foto.titulo}">
                <img src="${foto.url}">
            </a>
        </figure>

        <div class="row">
            <div class="col-xs-8 col-sm-8 col-md-8">
                <h4 class="text-left">
                    <g:if test="${!foto.isCapa}">
                        <g:link controller="foto" action="definirCapa" params="[idFoto: foto.id, idTema: foto.decoracao.tema.id]">Definir como Capa</g:link>
                    </g:if>
                    <g:else>
                        Foto de Capa
                    </g:else>
                </h4>
            </div>

            <div class="col-xs-4 col-sm-4 col-md-4 text-left">
                <h6 class="text-right">
                    pertence à decoração [${foto.decoracao.nome}]
                </h6>
            </div>
        </div>
        </div>
        </div>
    </g:each>
</div>
</div>
</div>