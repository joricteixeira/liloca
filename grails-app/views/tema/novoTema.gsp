<head>
    <meta name="layout" content="mainAdmin" />
</head>
<body>
    <h1>Cadastrar novo Tema</h1>

    <g:form url="/admin/tema/0">
        <input type="hidden" name="temaNovo" value="true" />
        <div class="row">
            <input type="text" name="nome" class="form-control" placeholder="Nome do Tema">
        </div>
        <br>
        <div class="row">
            <input type="submit" class="btn btn-success" value="Salvar">
        </div>
    </g:form>
</body>