<g:if test="${processado}">
    <g:if test="${salvo}">
        <div class="alert alert-success">
            Alterações salvas com sucesso!
        </div>
    </g:if>
    <g:else>
        <div class="alert alert-danger">
            Não foi possível salvar as alterações!
        </div>
    </g:else>
</g:if>