package br.com.liloca

class Foto {

    String titulo
    String url

    static belongsTo = [decoracao: Decoracao]

    static constraints = {
    }
}
