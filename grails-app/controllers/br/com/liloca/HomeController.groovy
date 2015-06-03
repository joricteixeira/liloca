package br.com.liloca

class HomeController {

    def index() {

        render(view: '/home/home')
    }

    def teste(){
        render 'OK'
    }
}
