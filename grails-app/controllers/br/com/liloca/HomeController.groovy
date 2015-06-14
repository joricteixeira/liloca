package br.com.liloca

class HomeController {
    def definicoesSistemaService

    def index() {

        def temas = Tema.findAllByDestaque(true, [max: 3])

        if (temas.size() < 3) {
            temas.clear();
        }

        def fotos = Foto.findAll()

        render(view: '/home/home', model: [temasDestaque: temas, fotos: fotos])
    }
}
