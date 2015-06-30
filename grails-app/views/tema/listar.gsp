<head>
    <meta name="layout" content="mainAdmin"/>
</head>

<body>
<h1 class="page-header">Lista de Temas</h1>
<table class="table table-bordered table-striped">
    <tr>
        <th>#</th>
        <th>Nome</th>
        <th class="text-center">Destaque</th>
        <th>Ações</th>
    </tr>
    <g:form name="formDestaque" onsubmit=" return validarTemasDestaques()" url="[controller: 'tema', action: 'alterarDestaque']">
        <g:each in="${temas}" var="tema">
            <tr
                <g:if test="${tema.destaque}">class="info"</g:if>>
                <td>${tema.id}</td>
                <td>${tema.nome}</td>
                <td class="text-center">
                    <g:checkBox name="temaDestaque" checked="${tema.destaque}" value="${tema.id}"/>
                </td>
                <td>
                    <a href="${createLink(uri: "/admin/tema/${tema.id}")}" class="btn btn-warning">Alterar</a>
                    <a href="${createLink(uri: "/admin/tema/${tema.id}")}" class="btn btn-danger">Excluir</a>
                </td>
            </tr>
        </g:each>
        <button class="btn btn-success">Cadastrar Novo Tema</button> &nbsp
        <g:actionSubmit id="salvarDestaque" class="btn btn-default" action="alterarDestaque" value="Salvar Temas Destaques"/>
    </g:form>
    <br><br>
</table>
<script>
    $("input:checkbox").click(function () {

                var checkboxRow = $(this).parent().parent()

                var qtdTemasDestaque = $("input:checkbox:checked").length

                if (qtdTemasDestaque > 3) {
                    checkboxRow.toggleClass()
                    alert("Quantidade de Temas Destaques não podem ser maior que 3!")
                    return false
                } else if (qtdTemasDestaque < 3) {
                    checkboxRow.toggleClass("info")
                } else {
                    checkboxRow.toggleClass("info")
                }
            }
    )

    function validarTemasDestaques(){
        var qtdTemasDestaque = $("input:checkbox:checked").length

        if (qtdTemasDestaque < 3) {
            alert("Não foi possivel salvar: É preciso escolher 3 temas destaques!")
            return false
        } else {
            return true
        }
    }
</script>
</body>