package br.com.liloca

import org.codehaus.groovy.grails.commons.GrailsStringUtils

class BuscaController {

    def temas

    def index() {

        temas = Tema.findAll("from Tema order by nome")

        render(view: '/busca/busca', model: [temas: temas])
    }

    def buscarTema() {

        def nomeProcurado = GrailsStringUtils.trimLeadingWhitespace(params.nome)

        if (nomeProcurado) {
            temas = Tema.findAllByNomeIlike("%" + nomeProcurado + "%", [sort: "nome"])
            render(view: '../busca/searchResult', model: [temas: temas])
        } else {

            temas = Tema.findAll("from Tema order by nome")
            render(view: '../busca/searchResult', model: [temas: temas])
        }
    }
}

