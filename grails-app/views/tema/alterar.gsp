<head>
    <meta name="layout" content="mainAdmin" />
</head>
<body>

    <g:if test="${processado}">
        <g:if test="${salvo}">
            <div class="alert alert-success">
                Tema salvo com sucesso!
            </div>
        </g:if>
        <g:else>
            <div class="alert alert-danger">
                Não foi possível salvar o tema!
            </div>
        </g:else>
    </g:if>

${createLink(controller: "tema", action: "atualizar")}

    <div class="alert-success row">
        <br>

        <g:form>
            <input type="hidden" name="id" value="${tema.id}">
        <div class="row">
        <div class="col-md-1">
            <label>Nome:</label>
        </div>
        <div class="col-md-5">
            <input class="form-control" value="${tema.nome}" name="nome">
        </div>
        <div class="col-md-1">
            <label>Destaque:</label>
        </div>
        <div class="col-md-1">
            <input type="checkbox" <g:if test="${tema.destaque}">checked="checked"</g:if> name="destaque">
        </div>
        <div class="col-md-4">
            <button class="btn btn-success">Salvar</button>
        </div>
        </div>
        <br>
        <div class="row">

        </div>
        </g:form>
    </div>

    <div class="row alert-warning">

        <h2>Decorações deste Tema</h2>

        <ul>
        <g:each in="${tema.decoracoes}" var="decoracao">
            <li>${tema.nome} - ${decoracao.nome} - <g:link controller="decoracao" action="detalhar" params="[id: decoracao.id]">abrir</g:link></li>
        </g:each>
        </ul>

    </div>
    <div class="row alert-danger">
        <h2>Fotos deste Tema</h2>

        <ul>
            <g:each in="${tema.decoracoes}" var="decoracao">
                <g:each in="${decoracao.fotos}" var="foto">
                    <img width="180" height="180" src="${foto.url}" />
                </g:each>
            </g:each>
        </ul>

    </div>




</body>
