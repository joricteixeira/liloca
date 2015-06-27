<head>
    <meta name="layout" content="mainAdmin"/>
</head>

<body>

    <h1 class="page-header">Dashboard</h1>
    <button class="btn btn-success">
        Cadastrar Novo Tema
    </button>
<br><br>
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
            <td><button class="btn btn-warning">Alterar</button> <button class="btn btn-danger">Excluir</button></td>
        </tr>
    </g:each>
    </table>

</body>