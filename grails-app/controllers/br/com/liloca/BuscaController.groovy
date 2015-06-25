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

    def ordenar() {

        switch (params.tipoOrdenacao) {
            case "Ordenar por: Nome [A - Z]":
                temas = Tema.findAll("from Tema order by nome")
                render(view: '../busca/searchResult', model: [temas: temas])
                break
            case "Ordenar por: Nome [Z - A]":
                temas = Tema.findAll("from Tema order by nome desc")
                render(view: '../busca/searchResult', model: [temas: temas])
                break
        }
    }
}

