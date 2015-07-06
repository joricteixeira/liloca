<head>
    <meta name="layout" content="mainAdmin"/>
</head>

<body>

<h1 class="page-header">Mensagens de Contato</h1>
<ul class="list-group">
    <g:each in="${mensagensNaoLidas}" var="mensagem">
        <li class="list-group-item">
            <h4 class="list-group-item-heading text-center">De: ${mensagem.email}</h4>
            <p class="list-group-item-text"><b>Nome:</b> ${mensagem.nome}</p>
            <p class="list-group-item-text"><b>Telefone:</b> ${mensagem.telefone}</p>
            <p class="list-group-item-text"><b>Mensagem:</b> ${mensagem.mensagem}</p>
            <p class="list-group-item-text"><b>Data envio:</b> <g:formatDate date="${mensagem.dataEnvio}" /></p>
        </li>
    </g:each>
</ul>

</body>