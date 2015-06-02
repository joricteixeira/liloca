package br.com.liloca

class Propriedade {

    String descricao

    static belongsTo = [decoracao: Decoracao]

    static constraints = {
    }
}
