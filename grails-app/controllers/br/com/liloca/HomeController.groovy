package br.com.liloca

class HomeController {
    def definicoesSistemaService

    def index() {

        def temas = Tema.findAllByDestaqueAndAtivo(true, true, [max: 3])

        if (temas.size() < 3) {
            temas.clear();
        }

        render(view: '/home/home', model: [temas: temas])
    }
}
