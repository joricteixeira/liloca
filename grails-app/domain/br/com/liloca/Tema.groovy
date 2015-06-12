package br.com.liloca

class Tema {

    String nome
    boolean destaque

    static hasMany = [decoracoes: Decoracao]

    static constraints = {
    }

    static mapping = {
        table 'TB_TEMA'
        version false

        id column: 'ID'
        nome column: 'NOME'
        destaque column: 'DESTAQUE'
    }

    def Foto getFotoCapa() {
        decoracoes.getAt(0).fotos.getAt(0)
    }
}
