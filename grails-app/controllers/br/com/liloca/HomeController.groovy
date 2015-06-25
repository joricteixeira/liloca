package br.com.liloca

class HomeController {
    def definicoesSistemaService

    def index() {

        def temas = Tema.findAllByDestaque(true, [max: 3, sort: "nome"])

        if (temas.size() < 3) {
            temas.clear();
        }

        render(view: '/home/home', model: [temas: temas])
    }
}
