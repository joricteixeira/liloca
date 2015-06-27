<head>
    <meta name="layout" content="mainAdmin"/>
</head>

<body>

<h1 class="page-header">Lista de Temas</h1>
<button class="btn btn-success">
    Cadastrar Novo Tema
</button>
<br><br>
<table class="table table-bordered table-striped">
    <tr>
        <td>#</td>
        <td>Nome</td>
        <td class="text-center">Destaque</td>
        <td>Ações</td>
    </tr>
    <g:each in="${temas}" var="tema">
        <tr
            <g:if test="${tema.destaque}">class="info"</g:if>>
            <td>${tema.id}</td>
            <td>${tema.nome}</td>
            <td class="text-center"><g:checkBox name="destaque" value="${tema.destaque}"></g:checkBox></td>
            <td>
                <a href="${createLink(uri: "/admin/tema/${tema.id}")}" class="btn btn-warning">Alterar</a>
                <a href="${createLink(uri: "/admin/tema/${tema.id}")}" class="btn btn-danger">Excluir</a>
            </td>
        </tr>
    </g:each>
</table>
</body>