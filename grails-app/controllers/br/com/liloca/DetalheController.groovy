package br.com.liloca

class DetalheController {

    def index() {


        def id = Integer.parseInt(params.id)

        def tema = Tema.findById(id)

        def temasRelacionados = Tema.findAll()

        if (temasRelacionados.size() < 3) {
            temasRelacionados.clear();
        }

        render (view: '/detalhe/detalhe', model: [tema: tema, temas: temasRelacionados])
    }
}
