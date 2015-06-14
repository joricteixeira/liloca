<g:if test="${((mensagemEnvio != "") && (mensagemEnvio != null))}">
    <div
        <g:if test="${sucessoEnvio}">class="alert alert-success"</g:if>
        <g:else>class="alert alert-danger"</g:else>
        role="alert">
        ${mensagemEnvio}
    </div>
</g:if>

<g:formRemote name="formContato" url="[controller:'mail', action:'enviarEmail']" update="retorno-envio">
    <div class="row">
        <div class="col-xs-12 col-sm-6 col-md-6">
            <input type="text" name="nome" class="form-control" placeholder="Nome:">
        </div>
        <div class="col-xs-12 col-sm-6 col-md-6">
            <input type="text" name="telefone" class="form-control" placeholder="Telefone:">
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <input type="text" name="email" class="form-control" placeholder="E-mail:">
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <textarea name="mensagem" class="form-control" placeholder="Mensagem:"></textarea>
        </div>
    </div>

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <input type="reset" value="Limpar" class="btn btn-primary">
            <g:submitButton name="submit" value="Enviar" class="btn btn-danger" />
        </div>
    </div>
</g:formRemote>