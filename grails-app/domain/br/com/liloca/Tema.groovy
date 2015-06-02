package br.com.liloca

class Tema {

    String nome

    static hasMany = [decoracoes: Decoracao]

    static constraints = {
    }

    static mapping = {
        table 'TB_TEMA'
        version false

        id column: 'ID'
        nome column: 'NOME'
    }




}
