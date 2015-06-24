<g:each in="${temas}" var="tema">
    <script type="text/javascript">
            $(document).ready(function() {
                $("[rel^='prettyPhoto${tema.nomeMinificado}']").magnificPopup({
                    items: [


                <g:each in="${tema.fotos}" var="foto" status="i">
                    {
                        src: '${foto.url}'
                    }
                    <g:if test="${(i + 1) < tema.fotos.size()}">
                    ,
                    </g:if>
                </g:each>


                ],
                gallery: {
                    enabled: true
                },
                type:'image'
            });
        });
    </script>
</g:each>

<g:if test="${tema}">
    <script type="text/javascript">
        $(document).ready(function() {
            $("[rel^='prettyPhoto${tema.nomeMinificado}']").magnificPopup({
                items: [


                    <g:each in="${tema.fotos}" var="foto" status="i">
                    {
                        src: '${foto.url}'
                    }
                    <g:if test="${(i + 1) < tema.fotos.size()}">
                    ,
                    </g:if>
                    </g:each>


                ],
                gallery: {
                    enabled: true
                },
                type:'image'
            });
        });
    </script>
</g:if>