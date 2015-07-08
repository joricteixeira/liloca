<!-- Button trigger modal -->
<button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal${id}">
    Excluir
</button>

<!-- Modal -->
<div class="modal fade" id="myModal${id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Tem certeza que deseja excluir ?</h4>
            </div>
            <div class="modal-body">
                A ação de exclusão é irreversível. Só confirme se tiver certeza!
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                <a href="/admin/tema/decoracao/${id}/excluir" type="button" class="btn btn-primary">Excluir</a>
            </div>
        </div>
    </div>
</div>