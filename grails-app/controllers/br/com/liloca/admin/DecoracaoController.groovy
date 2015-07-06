package br.com.liloca.admin

import br.com.liloca.Decoracao
import br.com.liloca.command.DecoracaoCommand
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class DecoracaoController {

    def detalhar() {

        def decoracaoId = Long.parseLong(params.id)
        def decoracao = Decoracao.findById(decoracaoId)

        render(view: '/decoracao/detalharDecoracao', model: [decoracao: decoracao])
    }

    def atualizar(DecoracaoCommand decoracaoCommand){
        def decoracao = Decoracao.findById(decoracaoCommand.id)

        decoracao.nome = decoracaoCommand.nome
        decoracao.valor = decoracaoCommand.valor

        def salvoComSucesso = decoracao.save()

        render(view: '/decoracao/detalharDecoracao', model: [decoracao: decoracao, salvo: salvoComSucesso, processado: true])
    }
}
