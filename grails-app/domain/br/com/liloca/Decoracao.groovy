package br.com.liloca

class Decoracao {

    String nome
    BigDecimal valor

    static belongsTo = [tema: Tema]
    static hasMany = [propriedades: Propriedade, fotos: Foto]

    static constraints = {
    }

    static mapping = {
        table 'TB_DECORACAO'
        version false

        id column: 'ID'
        nome column: 'NOME'
        valor column: 'VALOR'
        tema: 'TEMA_ID'
    }
}
