<head>
    <meta name="layout" content="mainAdmin" />
</head>
<body>
<h1>Cadastrar nova Decoração</h1>

<g:form controller="decoracao" action="atualizar">
    <input type="hidden" name="id" value="0" />
    <input type="hidden" name="decoracaoNova" value="true" />
    <input type="hidden" name="temaId" value="${temaId}" />
    <div class="row">
        <input type="text" name="nome" class="form-control" placeholder="Nome da Decoração">
    </div>
    <div class="row">
        <input type="text" name="valor" class="form-control" placeholder="Valor: 99,00">
    </div>
    <br>
    <div class="row">
        <input type="submit" class="btn btn-success" value="Salvar">
    </div>
</g:form>
</body>
