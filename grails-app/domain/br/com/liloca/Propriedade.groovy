package br.com.liloca

class Propriedade {

    String descricao

    static belongsTo = [decoracao: Decoracao]

    static constraints = {
    }

    static mapping = {
        table 'TB_PROPRIEDADE'
        version false

        id column: 'ID'
        descricao column: 'DESCRICAO'
        decoracao column: 'DECORACAO_ID'
    }
}
