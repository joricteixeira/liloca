<head>
    <meta name="layout" content="mainAdmin"/>
</head>

<body>
    <a class="btn btn-danger" href="${createLink(url: "/admin/tema")}">voltar para <span style="font-weight: bold;">Listagem</span></a>

<g:render template="/templates/alteracoesSalvas" />

<div class="row">
    <g:form uri="/admin/tema/${tema.id}">
        <div>
            <h3 class="text-center">Propriedades do Tema</h3>

            <table class="table table-bordered bg-success">
                <tr>
                    <th><label><h4>Nome:</h4></label></th>
                    <th><label><h4>Destaque:</h4></label></th>
                    <th><label><h4>Ativo:</h4></label></th>
                </tr>
                <tr>
                    <td><input class="form-control" value="${tema.nome}" name="nome"></td>
                    <td><input type="checkbox" <g:if test="${tema.ativo}">checked="checked"</g:if> name="ativo"></td>
                    <td><input type="checkbox" <g:if test="${tema.destaque}">checked="checked"</g:if> name="destaque"></td>
                </tr>
                <tr>
                    <td colspan="3">
                        <button class="btn btn-success">Salvar modificações</button>
                    </td>
                </tr>

            </table>

        </div>
    </g:form>
</div>

<h3 class="text-center">Decorações</h3>
<div class="row">
    <div class="text-right">
        <a href="/admin/tema/${tema.id}/decoracao/novo" class="btn btn-success">Adicionar Nova Decoração</a>
    </div>
</div>
<br>
<div class="row bg-success">
    <g:each in="${tema.decoracoes}" var="decoracao">
        <div class="col-md-12 table-bordered">
            <div class="row">
                <div class="col-md-2">
                    <h4>
                        ${decoracao.nome} | <g:formatNumber number="${decoracao.valor}" currencyCode="BRL" maxFractionDigits="2" minFractionDigits="2" type="currency" />
                    </h4>
                </div>
                <div class="col-md-10 text-right">
                    <h4>
                        <g:link class="btn btn-warning" url="/admin/tema/decoracao/${decoracao.id}">Alterar | Detalhar</g:link>
                        <g:render template="/decoracao/modalConfirmacaoDelecaoDecoracao" model="[id:decoracao.id]" />
                    </h4>
                </div>
            </div>
            <ul class="list-group">
                <g:each in="${decoracao.propriedades}" var="propriedade">
                    <li class="list-group-item">
                        ${propriedade.descricao}
                    </li>
                </g:each>
            </ul>
        </div>
    </g:each>
</div>


<div class="row">
    <h3>Fotos deste Tema</h3>
    <p class="text-info">para adicionar fotos abra a decoração específica</p>
</div>
<g:render template="/foto/listagemFoto" model="[fotos: tema.fotos]" />

</body>

