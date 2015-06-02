package br.com.liloca

class Decoracao {

    String nome
    BigDecimal valor

    static belongsTo = [tema: Tema]
    static hasMany = [propriedades: Propriedade, fotos: Foto]

    static constraints = {
    }
}
