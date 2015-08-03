<head>
    <meta name="layout" content="mainAdmin"/>
</head>

<body>

<h1 class="page-header">Mensagens de Contato</h1>
<ul class="list-group">

    <g:if test="${!mensagens.isEmpty()}">
        <g:each in="${mensagens}" var="mensagem">
            <li class="list-group-item">

                <g:if test="${mensagem.lida}">
                    <a class="btn btn-warning pull-right" href="/admin/mensagem/${mensagem.id}/marcarNaoLida">Marcar como NÃO lida</a>
                </g:if>
                <g:else>
                    <a class="btn btn-primary pull-right" href="/admin/mensagem/${mensagem.id}/marcarLida">Marcar como lida</a>
                </g:else>

                <h4 class="list-group-item-heading text-center">De: ${mensagem.email}</h4>
                <p class="list-group-item-text"><b>Nome:</b> ${mensagem.nome}</p>
                <p class="list-group-item-text"><b>Telefone:</b> ${mensagem.telefone}</p>
                <p class="list-group-item-text"><b>Mensagem:</b> ${mensagem.mensagem}</p>
                <p class="list-group-item-text"><b>Data envio:</b> <g:formatDate date="${mensagem.dataEnvio}" /></p>
            </li>
        </g:each>
    </g:if>
    <g:else>
        <h4>Não existem mensagens para serem exibidas</h4>
    </g:else>
</ul>

</body>