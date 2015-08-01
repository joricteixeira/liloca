<div class="row" style="padding-top: 15px">


    <table class="table">
        <g:if test="${detalheTema}">
            <tr>
                <th></th>
                <th>pertence à decoração </th>
                <th></th>
            </tr>
            <g:each in="${fotos}" var="foto">
                <tr>
                    <td><img src="${foto.url}" height="80"></td>
                    <td>${foto.decoracao.nome}</td>
                    <td>
                        <g:if test="${!foto.isCapa}">
                            <g:link class="btn btn-warning" controller="foto" action="definirCapa" params="[idFoto: foto.id, idTema: foto.decoracao.tema.id]">Definir como Capa</g:link>
                        </g:if>
                        <g:else>
                            <span class="btn btn-success">Foto de Capa</span>
                        </g:else>
                    </td>
                </tr>
            </g:each>
        </g:if>
        <g:elseif test="${detalheDecoracao}">
            <g:each in="${fotos}" var="foto">
                <tr >
                    <img src="${foto.url}" height="150">
                </tr>
            </g:each>
        </g:elseif>
    </table>


</div>
</div>
</div>