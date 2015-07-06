<head>
    <meta name="layout" content="mainAdmin"/>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'alertify.min.js')}"></script>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'alertify.core.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'alertify.default.css')}" type="text/css">
</head>

<body>
<h1 class="page-header">Lista de Temas</h1>

<a class="btn btn-success" href="${createLink(url: "/admin/tema/novo")}">Cadastrar Novo Tema</a>
<g:actionSubmit id="salvarDestaque" class="btn btn-default" action="alterarDestaque" value="Salvar Temas Destaques"/>

<table class="table table-bordered table-striped">
    <tr>
        <td>#</td>
        <td>Nome</td>
        <td class="text-center">Destaque</td>
        <td>Ações</td>
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
                    <a href="${createLink(url: "/admin/tema/${tema.id}")}" class="btn btn-warning">Alterar Tema</a>
                    <g:if test="${tema.ativo}">
                        <g:link id="botaoDesativar" controller="tema" action="atualizar" params="[acao: 'desativar', idTema: tema.id]" class="btn btn-primary">Desativar Tema</g:link>
                    </g:if>
                    <g:else>
                        <g:link id="botaoAtivar" controller="tema" action="atualizar" params="[acao: 'ativar', idTema: tema.id]" class="btn btn-success">Ativar Tema</g:link>
                    </g:else>
                    <g:link controller="tema" action="remover" params="[id: tema.id]" onclick="return deleteConfirm('${tema.nome}')" class="btn btn-danger">Excluir Tema</g:link>
                </td>
            </tr>
        </g:each>
    </g:form>
    <br><br>
</table>
<script>

    $(document).ready(alertaTemaDestaque)

    $("input:checkbox").click(function () {

                var checkboxRow = $(this).parent().parent()

                var qtdTemasDestaque = $("input:checkbox:checked").length

                if (qtdTemasDestaque > 3) {
                    checkboxRow.toggleClass()
                    reset()
                    alertify.alert("Quantidade de Temas Destaques não podem ser maior que 3!")
                    return false
                } else if (qtdTemasDestaque < 3) {
                    checkboxRow.toggleClass("info")
                } else {
                    checkboxRow.toggleClass("info")
                }
            }
    )

    function validarTemasDestaques() {

        var qtdTemasDestaque = $("input:checkbox:checked").length

        if (qtdTemasDestaque < 3) {
            reset()
            alertify.alert("Não foi possivel salvar: É preciso escolher 3 temas destaques!")
            return false
        } else {
           return true
        }
    }

    function alertaTemaDestaque() {
        var qtdTemasDestaque = $("input:checkbox:checked").length

        if (qtdTemasDestaque < 3) {
            reset()
            alertify.log("Atenção: É preciso escolher 3 temas destaques!")
        }
    }

    function deleteConfirm(nome) {

        alertify.set({labels: {ok: "Tenho!", cancel: "Não tenho!"}});
        alertify.set({buttonFocus: "cancel"});
        alertify.confirm("Tem certeza que deseja excluir o tema " + nome + "?", function (e) {
            if (e) {
                alertify.success("Você excluiu o tema com sucesso!");
                return true
            } else {
                return false
            }
        });
        return false;
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