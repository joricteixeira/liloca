package br.com.liloca.admin
import br.com.liloca.Foto
import br.com.liloca.Tema

class FotoController {

    def index() {}

    def definirCapa(){

        def idFoto = Long.parseLong(params.idFoto)
        def idTema = Long.parseLong(params.idTema)
        def tema = Tema.findById(idTema)

        tema.fotoCapa.isCapa = false

        def foto = Foto.findById(idFoto)
        foto.isCapa = true

        redirect(controller: "tema", action: "detalhar", params: [id: idTema])
    }

    def deletarFoto(){}

}

