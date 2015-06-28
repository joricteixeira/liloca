<head>
    <meta name="layout" content="mainAdmin"/>
</head>

<body>

<h1 class="page-header">Lista de Temas</h1>
<button class="btn btn-success">
    Cadastrar Novo Tema
</button>
<br><br>
<table id="tableTemas" class="table table-bordered table-striped">
    <tr>
        <th>#</th>
        <th>Nome</th>
        <th class="text-center">Destaque</th>
        <th>Ações</th>
    </tr>
    <g:each in="${temas}" var="tema">
        <tr id="linhaTemas"
            <g:if test="${tema.destaque}">class="info"</g:if>>
            <td>${tema.id}</td>
            <td>${tema.nome}</td>
            <td id=colunaDestaque class="text-center">
                <g:form id="formDestaque" name="formDestaque" onsubmit="return validarDestaques()" url="[controller: 'tema', action: 'alterarDestaque']">
                    <g:checkBox id="checkboxDestaque" name="temaDestaque" onclick="this.formDestaque.submit()" checked="${tema.destaque}"></g:checkBox>
                    <g:hiddenField name="nome" value="${tema.nome}"/>
                    <g:actionSubmit class="btn btn-default" action="alterarDestaque" value="save"/>
                </g:form>
            </td>
            <td>
                <a href="${createLink(uri: "/admin/tema/${tema.id}")}" class="btn btn-warning">Alterar</a>
                <a href="${createLink(uri: "/admin/tema/${tema.id}")}" class="btn btn-danger">Excluir</a>
            </td>
        </tr>
    </g:each>
</table>
<script>
    function validarDestaques() {

        var qtdDestaque = 0
        $('tr#linhaTemas').each(function () {

            var checkbox = $(this)

            checkbox = (checkbox.find($(":checked")))

            if (checkbox.length > 0) {
                qtdDestaque = qtdDestaque + 1
            }
        })

        if (qtdDestaque != 3) {
            alert('A quantidade de Temas Destaques são 3!')
            return false
        } else {
            return true
        }

    }
</script>
</body>