<head>
    <meta name="layout" content="mainAdmin"/>
</head>

<body>

<g:render template="/templates/alteracoesSalvas" />

<div class="row">
    <g:form uri="/admin/tema/${tema.id}">
        <div class="well well-sm">
            <h3 class="text-center">Propriedades do Tema</h3>

            <table class="table">
                <tr>
                    <td><label><h4>Nome:</h4></label></td>
                    <td><input class="form-control" value="${tema.nome}" name="nome"></td>
                </tr>
                <tr>
                    <td><label><h4>Destaque:</h4></label></td>
                    <td><input type="checkbox" <g:if test="${tema.destaque}">checked="checked"</g:if> name="destaque"></td>
                </tr>
                <tr>
                    <td><label><h4>Ativo:</h4></label></td>
                    <td><input type="checkbox" <g:if test="${tema.ativo}">checked="checked"</g:if> name="ativo"></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <button class="btn btn-success" style="margin-bottom: 10px; height:50px;">Salvar modificações</button>
                    </td>
                </tr>

            </table>

        </div>
    </g:form>
</div>

<div class="row">
    <h3>Decorações deste Tema</h3>
    <ul class="list-group">
        <g:each in="${tema.decoracoes}" var="decoracao">
            <g:link url="/admin/tema/decoracao/${decoracao.id}  " class="list-group-item">
                <span class="badge">
                    <g:formatNumber number="${decoracao.valor}" currencyCode="BRL" maxFractionDigits="2" minFractionDigits="2" type="currency" />
                </span>
                Decoração ${decoracao.nome}
                <ul class="list-group">
                    <g:each in="${decoracao.propriedades}" var="propriedade">
                        <li class="list-group-item">
                            ${propriedade.descricao}
                        </li>
                    </g:each>
                </ul>
            </g:link>
        </g:each>
    </ul>
</div>

<g:render template="/foto/listagemFoto" model="[fotos: tema.fotos]" />
</body>
