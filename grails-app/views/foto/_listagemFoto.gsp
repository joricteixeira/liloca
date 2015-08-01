<div class="row" style="padding-top: 15px">


    <table class="table">
        <tr>
            <th>foto</th>
            <g:if test="${detalheTema}">
                <th>pertence à decoração </th>
            </g:if>
            <th>ações</th>
        </tr>
            <g:each in="${fotos}" var="foto">
                <tr>
                    <td><img src="${foto.url}" height="80"></td>
                    <g:if test="${detalheTema}">
                        <td>${foto.decoracao.nome}</td>
                    </g:if>
                    <td>
                        <g:if test="${detalheTema}">
                            <g:if test="${!foto.isCapa}">
                                <g:link class="btn btn-warning" controller="foto" action="definirCapa" params="[idFoto: foto.id, idTema: foto.decoracao.tema.id]">Definir como Capa</g:link>
                            </g:if>
                            <g:else>
                                <span class="btn btn-success">Foto de Capa</span>
                            </g:else>
                        </g:if>
                        <a class="btn btn-danger" href="/admin/tema/decoracao/${foto.id}/foto/deletar">Excluir foto</a>
                    </td>
                </tr>
            </g:each>
    </table>


</div>
</div>
</div>