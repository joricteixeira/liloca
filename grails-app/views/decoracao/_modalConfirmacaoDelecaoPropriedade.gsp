<a href="#" class="list-group-item">
${descricao}



<!-- Button trigger modal -->
<span class="badge">
    <button class="btn btn-xs btn-danger" data-toggle="modal" data-target="#myModal${id}">
        Excluir
    </button>
</span>

</a>

<!-- Modal -->
<div class="modal fade" id="myModal${id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Tem certeza ?</h4>
                </div>
                <div class="modal-body">
                    A exclusão é irreversível. Tem certeza que deseja prosseguir ?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                    <a class="btn btn-default" href="/admin/tema/decoracao/${decoracaoId}/propriedade/${id}/excluir">Deletar</a>
                </div>
            </div>
        </div>
</div>