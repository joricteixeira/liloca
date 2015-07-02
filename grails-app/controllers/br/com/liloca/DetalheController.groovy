package br.com.liloca

class DetalheController {

    def index() {


        def id = Integer.parseInt(params.id)

        def tema = Tema.findByIdAndVisivel(id, true)

        if(tema){
            render (view: '/detalhe/detalhe', model: [tema: tema])
        }else{
            render(status: 404)
        }

    }
}
