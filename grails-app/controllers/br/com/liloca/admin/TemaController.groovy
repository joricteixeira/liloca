package br.com.liloca.admin

import br.com.liloca.Tema
import br.com.liloca.command.TemaCommand
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class TemaController {


    def listar() {

        def temas = Tema.list()

        render(view: '/tema/listar', model: [temas: temas])
    }

    def detalhar() {

        def id = Integer.parseInt(params.id)

        def tema = Tema.findById(id)

        render(view: '/tema/alterar', model: [tema: tema])
    }

    def atualizar(TemaCommand temaCommand) {

        //TODO equalizar metodos provenientes da listagem com metodos do detalhe

        def tema = Tema.findById(temaCommand.id)
        tema.nome = temaCommand.nome
        tema.destaque = temaCommand.destaque

        def salvoComSucesso = tema.save()

        render(view: '/tema/alterar', model: [tema: tema, salvo: salvoComSucesso, processado: true])
    }

    def preRemover() {}

    def remover() {

        redirect(action: "listar")
    }

    def alterarDestaque() {

        //TODO Funcionalidade quebrada pós merge 03.07.2015 - equalizar metodos provenientes da listagem com metodos do detalhe
        def temas = Tema.list()
        def tema = null
        def id = null
        def idsTemasDestaques = []

        idsTemasDestaques.addAll(params.temaDestaque)

        temas.each {
            tema = it
            tema.destaque = false
            tema.save()
        }

        idsTemasDestaques.each {
            id = Long.parseLong(it)
            tema = Tema.findById(id)
            tema.destaque = true
            tema.save()
        }

        redirect(action: "listar")

    }
}
