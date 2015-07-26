<div class="row" style="padding-top: 15px">


    <table class="table">
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
    </table>


</div>
</div>
</div>