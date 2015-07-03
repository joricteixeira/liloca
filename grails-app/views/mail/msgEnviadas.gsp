<head>
    <meta name="layout" content="mainAdmin"/>
</head>

<body>

<h1 class="page-header">Mensagens Enviadas</h1>
<table class="table table-bordered table-striped">
    <tr>
        <td>#</td>
        <td>Nome</td>
        <td>Ações</td>
    </tr>
    <g:each in="${temas}" var="tema">
        <tr>
            <td>${tema.id}</td>
            <td>${tema.nome}</td>
            <td><button class="btn btn-warning">Enviar</button> <button class="btn btn-danger">Limpar</button></td>
        </tr>
    </g:each>
</table>

</body>