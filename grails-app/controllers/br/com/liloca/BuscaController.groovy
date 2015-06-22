package br.com.liloca

class BuscaController {

    def index() {

        def temas = Tema.findAll()

        render (view: '/busca/busca', model: [temas: temas])
    }

    def buscarTema(){

        def tema = Tema.findAllByNome(params.nome)
        render (template: '../templates/fotos/temaCard', model: [tema: tema])
    }
}