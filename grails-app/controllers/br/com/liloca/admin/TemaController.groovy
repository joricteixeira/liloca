package br.com.liloca.admin

import br.com.liloca.Tema
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class TemaController {

    def listar() {
        def temas = Tema.list()

        render(view: '/tema/listar', model: [temas: temas])
    }

    def detalhar(){}

    def atualizar(){}

    def preRemover(){}

    def remover(){}
}
