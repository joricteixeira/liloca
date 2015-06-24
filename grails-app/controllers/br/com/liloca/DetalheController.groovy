package br.com.liloca

class DetalheController {

    def index() {


        def id = Integer.parseInt(params.id)

        def tema = Tema.findById(id)

        render (view: '/detalhe/detalhe', model: [tema: tema])
    }
}
