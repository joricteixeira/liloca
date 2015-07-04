<li class="temaCard">
    <div class="featured-thumbnail thumbnail">
        <figure class="thumbnail">
            <a href="#" rel="prettyPhoto${tema.nomeMinificado}" title="${tema.nome}">
                <img src="${tema.fotoCapa.url}" alt="Lorem ipsum dolor.">
                <span class="zoom-icon"></span>
            </a>
        </figure>
        <div class="row">
            <div class="col-xs-8 col-sm-8 col-md-8 text-center">
                <h3>
                    <g:link controller="detalhe" action="index" params="[id: tema.id]">
                        ${tema.nome}
                    </g:link>
                </h3>
            </div>
            <div class="col-xs-4 col-sm-4 col-md-4 text-left">
                <g:link controller="detalhe" action="index"  class="btn btn-danger" params="[id: tema.id]">
                    saiba mais
                </g:link>
            </div>
        </div>
    </div>
</li>