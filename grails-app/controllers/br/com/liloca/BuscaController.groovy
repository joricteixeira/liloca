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

        StringBuilder query = new StringBuilder()
        Map parametros = new HashMap()

        query.append("FROM Tema T WHERE 1 = 1 ")

        if(nomeProcurado && nomeProcurado != ""){
            query.append("AND T.nome like :pNome")
            parametros.put("pNome","%${nomeProcurado}%")
        }

        query.append(" ORDER BY T.nome")

        def temas = Tema.executeQuery(query.toString() ,parametros)

        render(view: '../busca/searchResult', model: [temas: temas])
    }
}

