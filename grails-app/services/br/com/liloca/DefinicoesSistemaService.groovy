package br.com.liloca

import grails.transaction.Transactional

@Transactional
class DefinicoesSistemaService {

    def grailsApplication

    def getUrlServidor(){
        return config().serverURL
    }

    private config() {
        return grailsApplication.config.grails
    }
}
