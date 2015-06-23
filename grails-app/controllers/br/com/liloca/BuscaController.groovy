package br.com.liloca

class BuscaController {

    def temas

    def index() {

        temas = Tema.findAll()
        render(view: '/busca/busca', model: [temas: temas])
    }

    def buscarTema() {

        if (params.nome != "") {

            temas = Tema.findAllByNomeLike(params.nome+"%")

            render(view: '../busca/searchResult', model: [temas: temas])
        }
        else {

            temas = Tema.findAll()
            render (view: '../busca/searchResult', model: [temas: temas])
        }
    }
}

