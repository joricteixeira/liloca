<head>
    <meta name="layout" content="mainAdmin" />
</head>
<body>
    <a class="btn btn-danger" href="${createLink(url: "/admin/tema/${decoracao.tema.id}")}">voltar para tema: <span style="font-weight: bold;">${decoracao.tema.nome}</span></a>

    <g:render template="/templates/alteracoesSalvas" />

    <div class="row">
        <h3 class="text-center">Decoração</h3>

        <g:form uri="/admin/tema/decoracao/${decoracao.id}">
            <table class="table table-bordered bg-success">
                <tr>
                    <th>Nome: </th>
                    <th>
                        Valor:
                    </th>
                </tr>
                <tr>
                    <td><input class="form-control" name="nome" value="${decoracao.nome}"></td>
                    <td><input name="valor" class="form-control" name="valor" value="<g:formatNumber number="${decoracao.valor}" maxFractionDigits="2" minFractionDigits="2" />" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <button class="btn btn-success">Salvar modificações</button>
                    </td>
                </tr>
            </table>
        </g:form>
    </div>

    <h3 class="text-center">Propriedades</h3>
    <div class="row bg-success">
        <div class="col-md-12 table-bordered">
            <div class="row">
                <div class="col-md-12 text-right">
                    <h4>
                        <button class="btn btn-success">Adicionar propriedades</button>
                    </h4>
                </div>
            </div>
            <ul class="list-group">
                <g:each in="${decoracao.propriedades}" var="propriedade">
                    <a href="#" class="list-group-item">
                        ${propriedade.descricao}
                    </a>
                </g:each>
            </ul>
        </div>
    </div>

<g:render template="/foto/listagemFoto" model="[fotos: decoracao.fotos]" />
</body>