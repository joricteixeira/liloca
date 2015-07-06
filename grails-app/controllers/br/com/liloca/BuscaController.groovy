package br.com.liloca

import br.com.liloca.enums.OrdenacaoBuscaEnum
import org.codehaus.groovy.grails.commons.GrailsStringUtils

class BuscaController {

    def index() {

        def nomeProcurado = GrailsStringUtils.trimLeadingWhitespace(params.nome)

        StringBuilder query = new StringBuilder()
        Map parametros = new HashMap()

        query.append("FROM Tema T WHERE T.ativo = 1 ")

        if(nomeProcurado && nomeProcurado != ""){
            query.append("AND T.nome like :pNome")
            parametros.put("pNome","%${nomeProcurado}%")
        }

        int identificadorOrdenacao = Integer.parseInt(params.tipoOrdenacao ?: "1")
        String ordenacao = OrdenacaoBuscaEnum.findByIdentificador(identificadorOrdenacao).valorQuery
        query.append(ordenacao)

        def temas = Tema.executeQuery(query.toString() ,parametros)

        def ordenacoesBusca = OrdenacaoBuscaEnum

        render(view: '/busca/busca', model: [temas: temas, ordenacoesBusca: ordenacoesBusca])
    }
}

