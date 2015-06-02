<g:formRemote name="formContato" class="wpcf7-form" novalidate="novalidate" url="[controller:'mail', action:'enviarEmail']" update="retorno-envio">
    <div class="row-fluid">
        <p class="span8 field"><span class="wpcf7-form-control-wrap your-name">
            <input style="width: 100%;" type="text" name="nome" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="Nome:"></span>
        </p>
        <p class="span4 field"><span class="wpcf7-form-control-wrap your-phone">
            <input style="width: 100%;" type="text" name="telefone" value="" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" placeholder="Telefone:"></span>
        </p>
    </div>
    <div class="row-fluid">
        <p class="span12 field"><span class="wpcf7-form-control-wrap your-email">
            <input style="width: 100%;" type="email" name="email" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email" aria-required="true" aria-invalid="false" placeholder="E-mail:"></span>
        </p>
    </div>
    <p class="field"><span class="wpcf7-form-control-wrap your-message">
        <textarea style="width: 100%;" name="mensagem" cols="40" rows="10" class="wpcf7-form-control wpcf7-textarea" aria-invalid="false" placeholder="Mensagem:"></textarea>
    </span> </p>
    <p class="submit-wrap">
        <input type="reset" value="limpar" class="btn btn-primary">
        <!--input type="submit" value="enviar" class="wpcf7-form-control wpcf7-submit btn btn-primary"-->
        <g:submitButton name="submit" value="Enviar" />


        <img class="ajax-loader" src="http://livedemo00.template-help.com/wordpress_50935/wp-content/plugins/contact-form-7/images/ajax-loader.gif" alt="Sending ..." style="visibility: hidden;"><div class="ajax-loader"></div></p>
    <div class="wpcf7-response-output wpcf7-display-none"></div>
</g:formRemote>