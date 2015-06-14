package br.com.liloca

class HomeController {

    def index() {

        def temas = Tema.findAllByDestaque(true, [max: 3])

        if (temas.size() < 3) {
            temas.clear();
        }

        render(view: '/home/home', model: [temasDestaque: temas])
    }
}
