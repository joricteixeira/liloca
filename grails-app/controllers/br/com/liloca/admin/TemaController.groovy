package br.com.liloca.admin

import br.com.liloca.Tema
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

    def atualizar() {}

    def preRemover() {}

    def remover() {

        redirect(action: "listar")
    }

    def alterarDestaque() {

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
