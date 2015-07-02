package br.com.liloca

import org.codehaus.groovy.grails.commons.GrailsStringUtils

class BuscaController {

    def temas

    def index() {

        temas = Tema.findAllByAtivo(true)

        render(view: '/busca/busca', model: [temas: temas])
    }

    def buscarTema() {

        def nomeProcurado = GrailsStringUtils.trimLeadingWhitespace(params.nome)

        if (nomeProcurado) {

            switch (params.tipoOrdenacao) {
                case "Ordenar por...":
                    temas = Tema.findAllByNomeIlikeAndAtivo("%" + nomeProcurado + "%", true)
                    render(view: '../busca/searchResult', model: [temas: temas])
                    break
                case "Ordenar por: Nome [A - Z]":
                    temas = Tema.findAllByNomeIlikeAndAtivo("%" + nomeProcurado + "%", [sort: "nome"], true)
                    render(view: '../busca/searchResult', model: [temas: temas])
                    break
                case "Ordenar por: Nome [Z - A]":
                    temas = Tema.findAllByNomeIlikeAndAtivo("%" + nomeProcurado + "%", [sort: "nome", order:"desc"], true)
                    render(view: '../busca/searchResult', model: [temas: temas])
                    break
            }
        } else {

            switch (params.tipoOrdenacao) {
                case "Ordenar por...":
                    temas = Tema.findAllByAtivo(true)
                    render(view: '../busca/searchResult', model: [temas: temas])
                    break
                case "Ordenar por: Nome [A - Z]":
                    temas = Tema.findAll("from Tema where ativo=true order by nome")
                    render(view: '../busca/searchResult', model: [temas: temas])
                    break
                case "Ordenar por: Nome [Z - A]":
                    temas = Tema.findAll("from Tema where ativo=true order by nome desc")
                    render(view: '../busca/searchResult', model: [temas: temas])
                    break
            }
        }
    }
}

