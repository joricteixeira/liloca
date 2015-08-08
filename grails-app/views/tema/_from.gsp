<head>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'alertify.min.js')}"></script>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'alertify.core.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'alertify.default.css')}" type="text/css">
</head>

<body>
<g:if test="${from == 1}">
    <g:javascript>fotoRemovida()</g:javascript>
</g:if>
<script>
    function fotoRemovida() {
        reset()
        alertify.success("Foto removida com sucesso!")
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