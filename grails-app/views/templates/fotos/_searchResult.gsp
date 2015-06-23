<g:if test="${!temas.isEmpty()}">
    <div class="col-xs-12">
        <h2 class="title-box_primary text-center text-uppercase">Temas Disponíveis!</h2>
    </div>

    <div class="row">
        <g:render template="/templates/fotos/temasCard" model="['tema': temas]"/>
    </div>
</g:if>
<g:else>
    <div class="col-xs-12">
        <h2 class="title-box_primary text-center text-uppercase">Tema Não Encontrado ;(</h2>
    </div>

    <div class="row">
        <div class="col-xs-12 col-sm-4 col-md-4"></div>
        <div class="col-xs-12 col-sm-4 col-md-4">
            <div class="featured-thumbnail thumbnail">
                <figure class="thumbnail">
                    <img src="${resource(dir: 'images', file: 'menina-triste.jpg')}" alt="Lorem ipsum dolor.">
                </figure>
            </div>
        </div>
    </div>
</g:else>