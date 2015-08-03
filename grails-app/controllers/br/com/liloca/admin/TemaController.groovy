package br.com.liloca.admin

import br.com.liloca.Tema
import br.com.liloca.command.TemaCommand
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class TemaController {

    def temaService

    def novo(){
        render(view: '/tema/novoTema')
    }

    def listar() {

        def temas = Tema.findAll()

        render(view: '/tema/listarTema', model: [temas: temas])
    }

    def detalhar() {

        def id = Integer.parseInt(params.id)

        def tema = Tema.findById(id)

        def from = Integer.parseInt(params.from ?: "0")

        render(view: '/tema/detalharTema', model: [tema: tema, from: from])
    }

    def atualizar(TemaCommand temaCommand) {

        def tema = Tema.findById(temaCommand.id) ?:new Tema()

        tema.nome = temaCommand.nome ?: tema.nome
        tema.destaque = temaCommand.destaque != null ? temaCommand.destaque: tema.destaque
        tema.ativo = temaCommand.ativo != null ? temaCommand.ativo : tema.ativo

        def salvoComSucesso = tema.save()

        if(temaCommand.temaNovo) {
            listar()
        }else{
            render(view: '/tema/detalharTema', model: [tema: tema, salvo: salvoComSucesso, processado: true])
        }
    }

    def excluir() {
        def id = Long.parseLong(params.id ?: "0")
        temaService.excluirTema(id)


        listar()
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

    def ativar(){
        def id = Long.parseLong(params.id)
        def tema = Tema.findById(id)
        tema.ativo = true
        tema.save()

        redirect(action: "listar")
    }

    def desativar(){
        def id = Long.parseLong(params.id)
        def tema = Tema.findById(id)
        tema.ativo = false
        tema.save()

        redirect(action: "listar")
    }
}
