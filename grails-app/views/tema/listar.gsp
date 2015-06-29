<head>
    <meta name="layout" content="mainAdmin"/>
</head>

<body>

<h1 class="page-header">Lista de Temas</h1>
<button class="btn btn-success">Cadastrar Novo Tema</button>
<g:actionSubmit id="salvarDestaque" class="btn btn-default" action="alterarDestaque" onclick="formSubmit()" value="Salvar Temas Destaques"/>
<br><br>
<table id="tableTemas" class="table table-bordered table-striped">
    <tr>
        <th>#</th>
        <th>Nome</th>
        <th class="text-center">Destaque</th>
        <th>Ações</th>
    </tr>
    <g:form id="formDestaque" name="formDestaque" url="[controller: 'tema', action: 'alterarDestaque']">
        <g:each in="${temas}" var="tema">
            <tr id="linhaTemas"
                <g:if test="${tema.destaque}">class="info"</g:if>>
                <td>${tema.id}</td>
                <td>${tema.nome}</td>
                <td id=colunaDestaque class="text-center">
                    <g:checkBox id="checkboxDestaque" name="temaDestaque" checked="${tema.destaque}" value="${tema.nome}"/>
                    <g:hiddenField id="temanome" name="nome" value="${tema.nome}"/>
                </td>
                <td>
                    <a href="${createLink(uri: "/admin/tema/${tema.id}")}" class="btn btn-warning">Alterar</a>
                    <a href="${createLink(uri: "/admin/tema/${tema.id}")}" class="btn btn-danger">Excluir</a>
                </td>
            </tr>
        </g:each>
    </g:form>
</table>
<script>

    $("input:checkbox").click(function () {

                var checkboxRow = $(this).parent().parent()

                var qtdTemasDestaque = $("input:checkbox:checked").length

                if (qtdTemasDestaque > 3){
                    checkboxRow.toggleClass()
                    alert("Quantidade de Temas Destaques não podem ser maior que 3!")
                    return false
                } else if (qtdTemasDestaque < 3) {
                    checkboxRow.toggleClass("info")
                } else {
                    checkboxRow.toggleClass("info")
                    formSubmit()
                }
                console.log($("input:checkbox"))
                console.log($(this).val())
                console.log($("input:checkbox:checked").val())
                console.log($("input:checkbox:checked"))

            }
    )


    function formSubmit() {

       /*var qtdDestaque = 0
        $('tr#linhaTemas').each(function () {

            var checkbox = $(this)

            checkbox = (checkbox.find($(":checked")))

            if (checkbox.length > 0) {
                qtdDestaque = qtdDestaque + 1
            }
        })

        if (qtdDestaque != 3) {
            alert('A quantidade de Temas Destaques deve ser 3!')
            return false
        } else {
            //$("#formDestaque").submit()
            alert("Salvo com Sucesso!")
        }*/
        alert("Salvo com Sucesso!")
    }
</script>
</body>