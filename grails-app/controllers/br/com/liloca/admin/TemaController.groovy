package br.com.liloca.admin

import br.com.liloca.Tema
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class TemaController {

    def temas

    def listar() {

        temas  = Tema.list()

        render(view: '/tema/listar', model: [temas: temas])
    }

    def detalhar(){}

    def atualizar(){}

    def preRemover(){}

    def remover(){}

    def alterarDestaque(){

        def tema = Tema.findByNome(params.nome)

        if(params.destaque == null){
            tema.destaque = false
        } else{
            tema.destaque = true
        }
        tema.save()

        temas = Tema.list()
        render(view: '/tema/listar', model: [temas: temas])
    }
}
