package br.com.liloca.admin

import br.com.liloca.Decoracao
import br.com.liloca.Tema
import br.com.liloca.command.DecoracaoCommand
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class DecoracaoController {

    def temaService

    def detalhar() {

        def decoracaoId = Long.parseLong(params.id)
        def decoracao = Decoracao.findById(decoracaoId)

        render(view: '/decoracao/detalharDecoracao', model: [decoracao: decoracao])
    }

    def atualizar(DecoracaoCommand decoracaoCommand){
        def decoracao = Decoracao.findById(decoracaoCommand.id) ?: new Decoracao()

        decoracao.nome = decoracaoCommand.nome
        decoracao.valor = decoracaoCommand.valor
        decoracao.tema = Tema.findById(decoracaoCommand.temaId) ?: decoracao.tema

        def salvoComSucesso = decoracao.save()

        if(decoracaoCommand.decoracaoNova){
            params.id = decoracao.id.toString()
            detalhar()
        }else {
            render(view: '/decoracao/detalharDecoracao', model: [decoracao: decoracao, salvo: salvoComSucesso, processado: true])
        }

    }

    def novo(){

        render(view: 'novaDecoracao', model: [temaId: params.id])
    }

    def excluir() {
        def id = Long.parseLong(params.id ?: "0")
        def temaId = temaService.excluirDecoracao(id)

        render(view: '/decoracao/excluirDecoracao', model: [temaId: temaId])
    }
}
