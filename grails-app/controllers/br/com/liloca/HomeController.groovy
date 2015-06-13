package br.com.liloca

class HomeController {

    def index() {

        //TODO adicionar lógica para obter somente destaques
        def temas = Tema.findAllByDestaque(true);

        //Se houver mais de 3 temas selecionados como destaque, retirar o excesso e mostrar apenas 3
        def qtdTemas = temas.size()
        if (qtdTemas > 3) {
            for(qtdTemas; qtdTemas > 3; qtdTemas--) {
                temas.remove(1)
            }
        }

        render(view: '/home/home', model: [temasDestaque: temas])
    }

    def teste(){
        render 'OK'
    }
}
