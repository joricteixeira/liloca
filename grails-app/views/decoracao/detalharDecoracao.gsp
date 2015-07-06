<head>
    <meta name="layout" content="mainAdmin" />
</head>
<body>
    <a class="btn btn-danger" href="${createLink(url: "/admin/tema/${decoracao.tema.id}")}">voltar para tema: <span style="font-weight: bold;">${decoracao.tema.nome}</span></a>

    <g:render template="/templates/alteracoesSalvas" />

    <div class="well well-sm">
        <g:form uri="/admin/tema/decoracao/${decoracao.id}">
            <table class="table">
                <tr>
                    <td>Nome: </td>
                    <td>
                        <input class="form-control" name="nome" value="${decoracao.nome}">
                    </td>
                </tr>
                <tr>
                    <td>Valor: </td>
                    <td><input name="valor" class="form-control" name="valor" value="<g:formatNumber number="${decoracao.valor}" maxFractionDigits="2" minFractionDigits="2" />" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <button class="btn btn-success" style="margin-bottom: 10px; height:50px;">Salvar modificações</button>
                    </td>
                </tr>
            </table>
        </g:form>
    </div>

    <div class="row">
        <h3>Propriedades desta Decoração</h3>
        <ul class="list-group">
            <g:each in="${decoracao.propriedades}" var="propriedade">
                <g:link controller="propriedade" action="index" params="[id: propriedade.id]" class="list-group-item">
                    ${propriedade.descricao}
                </g:link>
            </g:each>
        </ul>
    </div>

<g:render template="/foto/listagemFoto" model="[fotos: decoracao.fotos]" />
</body>