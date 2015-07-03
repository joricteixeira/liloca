<head>
    <meta name="layout" content="mainAdmin"/>
</head>

<body>
<div style="min-height: 100px"></div>

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

<div class="row">
    <g:form uri="/admin/tema/${tema.id}">
        <div class="row">
            <div class="col-md-1">
                <label><h2>Nome:</h2></label>
            </div>

            <div class="col-md-5">
                <div class="well well-sm">
                    <input class="form-control" placeholder="${tema.nome}" name="nome">
                </div>
            </div>
            <div class="col-md-2">
                <label><h2>Destaque:&nbsp&nbsp</h2></label>
                <input type="checkbox" <g:if test="${tema.destaque}">checked="checked"</g:if> name="destaque">&nbsp&nbsp&nbsp
                <button class="btn btn-success" style="margin-bottom: 10px; height:50px;">Salvar</button>
            </div>
        </div>
    </g:form>
</div>

<div class="row">
    <h2>Decorações deste Tema</h2>
    <ul>
        <g:each in="${tema.decoracoes}" var="decoracao">
            <li>
                <h3>${tema.nome} - Decoração ${decoracao.nome} - <g:link controller="decoracao" action="detalhar" params="[id: decoracao.id]">Detalhar</g:link></h3>
            </li>
        </g:each>
    </ul>
</div>

<div class="row">
    <h2>Fotos deste Tema</h2>
    <button class="btn btn-success">Adicionar novas fotos</button>&nbsp
    <button class="btn btn-danger">Deletar fotos selecionadas</button>
</div>


<div class="row" style="padding-top: 15px">
    <g:each in="${tema.fotos}" var="foto">
        <div class="col-xs-12 col-sm-4 col-md-3">
        <g:if test="${foto.isCapa}">
            <div class="featured-thumbnail thumbnail" style="background: #FFFFAA">
        </g:if>
        <g:else>
            <div class="featured-thumbnail thumbnail">
        </g:else>
        <figure class="thumbnail">
            <a href="#" rel="prettyPhoto${foto.nomeMinificado}" title="${foto.titulo}">
                <img src="${foto.url}" alt="Error 404">
            </a>
        </figure>

        <div class="row">
            <div class="col-xs-8 col-sm-8 col-md-8">
                <h3 class="text-left">
                    <g:if test="${!foto.isCapa}">
                        <g:link controller="foto" action="definirCapa" params="[idFoto: foto.id, idTema: tema.id]">Definir como Capa</g:link>
                    </g:if>
                    <g:else>
                        Foto de Capa
                    </g:else>
                </h3>
            </div>

            <div class="col-xs-4 col-sm-4 col-md-4 text-left">
                <h3 class="text-right">
                    <g:link controller="foto" action="deletarFoto" params="[idFoto: foto.id]">Deletar</g:link>
                </h3>
            </div>
        </div>
        </div>
        </div>
    </g:each>
</div>
</div>
</div>
</body>
