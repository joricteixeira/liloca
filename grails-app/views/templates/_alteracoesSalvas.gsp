<head>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'alertify.min.js')}"></script>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'alertify.core.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'alertify.default.css')}" type="text/css">
</head>

<body>
<g:if test="${processado}">
    <g:if test="${salvo}">
        <g:javascript>salvoComSucesso()</g:javascript>
    </g:if>
    <g:else>
        <g:javascript>salvoSemSucesso()</g:javascript>
    </g:else>
</g:if>
<script>
    function salvoComSucesso() {
        reset()
        alertify.success("Salvo com Sucesso!")
    }

    function salvoSemSucesso() {
        reset()
        alertify.error("Não foi possível salvar as alterações!")
    }

    function reset() {
        alertify.set({
            labels: {
                ok: "OK",
                cancel: "Cancel"
            },
            delay: 5000,
            buttonReverse: false,
            buttonFocus: "ok"
        });
    }
</script>
</body>