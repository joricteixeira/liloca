package br.com.liloca

import org.codehaus.groovy.grails.commons.GrailsStringUtils

class BuscaController {

    def temas

    def index() {

        temas = Tema.findAll()
        render(view: '/busca/busca', model: [temas: temas])
    }

    def buscarTema() {

        def nomeProcurado = GrailsStringUtils.trimLeadingWhitespace(params.nome)

        if(nomeProcurado != ""){
            temas = Tema.findAllByNomeIlike("%"+nomeProcurado+"%")
            render(view: '../busca/searchResult', model: [temas: temas])
        }else{

            temas = Tema.findAll()
            render (view: '../busca/searchResult', model: [temas: temas])
        }
    }
}

