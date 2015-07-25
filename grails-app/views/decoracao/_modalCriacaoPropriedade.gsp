<!-- Button trigger modal -->
<button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal${id}">
    Adicionar propriedade
</button>

<!-- Modal -->
<div class="modal fade" id="myModal${id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <g:form url="/admin/tema/decoracao/$id/propriedade">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Adicionar Propriedade</h4>
                </div>
                <div class="modal-body">
                    <input class="form-control" name="descricao" placeholder="Propriedade" />
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                    <input class="btn btn-success" value="Adicionar" type="submit">
                </div>
            </div>
        </div>
    </g:form>
</div>