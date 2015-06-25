package br.com.liloca.admin

import br.com.liloca.Tema
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class DashBoardController {


    def index() {

        render(view:'/admin.dashboard', model:[temas: Tema.list()])
    }
}
