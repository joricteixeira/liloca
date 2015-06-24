<g:each in="${temas}" var="tema">
    <div class="col-xs-12 col-sm-4 col-md-4">
        <g:if test="${tema.fotoCapa != null}">
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

                    <div class="col-xs-4 col-sm-4 col-md-4 text-left">
                        <g:link controller="detalhe" action="index" class="saibamais" params="[id: tema.id]">
                            saiba mais
                        </g:link>
                    </div>
                </div>
            </div>
        </g:if>
    </div>
</g:each>