package br.com.liloca.admin

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class PropriedadeController {

    def index() {}
}
