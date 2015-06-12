package br.com.liloca

class HomeController {

    def index() {




        //TODO adicionar lógica para obter somente destaques
        def temas = Tema.findAllByDestaque(true)

        render(view: '/home/home', model: [temasDestaque: temas])
    }

    def teste(){
        render 'OK'
    }
}
