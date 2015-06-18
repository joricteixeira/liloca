package br.com.liloca

class Foto {

    String titulo
    String url
    boolean isCapa

    static belongsTo = [decoracao: Decoracao]

    static constraints = {
    }

    static mapping = {
        table 'TB_FOTO'
        version false

        id column: 'ID'
        titulo column: 'TITULO'
        url column: 'URL'
        decoracao column: 'DECORACAO_ID'
        isCapa column: 'CAPA'
    }
}
