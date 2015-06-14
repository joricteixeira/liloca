package br.com.liloca

class HomeController {

    def index() {

        def temas = Tema.findAllByDestaque(true, [max: 3])

        render(view: '/home/home', model: [temasDestaque: temas])
    }

    def teste(){
        render 'OK'
    }
}
