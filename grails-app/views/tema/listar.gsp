<head>
    <meta name="layout" content="mainAdmin" />
</head>
<body>

    <h1 class="page-header">Lista de Temas</h1>

    <table class="table table-bordered table-striped">
        <tr>
            <td>#</td>
            <td>Nome</td>
            <td>Ações</td>
        </tr>
        <g:each in="${temas}" var="tema">
            <tr
                <g:if test="${tema.destaque}">class="info"</g:if>
            >
                <td>${tema.id}</td>
                <td>${tema.nome}</td>
                <td>
                    <a href="${createLink(uri: "/admin/tema/${tema.id}")}" class="btn btn-warning">Alterar</a>
                    <a href="${createLink(uri: "/admin/tema/${tema.id}")}" class="btn btn-danger">Excluir</a>
                </td>
            </tr>
        </g:each>
    </table>
</body>