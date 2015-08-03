package br.com.liloca.admin

import br.com.liloca.MensagemContato
import br.com.liloca.Tema
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class DashBoardController {


    def index() {

        def mensagensNaoLidas = MensagemContato.findAllByLida(false, [sort: 'dataEnvio', order: 'asc'])

        render(view:'/admin.dashboard', model:[mensagens: mensagensNaoLidas])
    }

    def mensagensLidas(){

        def mensagensLidas = MensagemContato.findAllByLida(true, [sort: 'dataEnvio', order: 'desc'])

        render(view:'/admin.dashboard', model:[mensagens: mensagensLidas])
    }

    def marcarLida(){
        def id = Long.parseLong(params.id)
        def mensagem = MensagemContato.findById(id)
        mensagem.lida = true
        mensagem.save()

        redirect(action: "index")
    }

    def marcarNaoLida(){
        def id = Long.parseLong(params.id)
        def mensagem = MensagemContato.findById(id)
        mensagem.lida = false
        mensagem.save()

        redirect(action: "mensagensLidas")
    }


}
