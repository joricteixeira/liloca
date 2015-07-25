package br.com.liloca.admin
import br.com.liloca.Foto
import br.com.liloca.Tema
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class FotoController {

    def index() {
        render (view: "formNovaFoto", model: [decoracaoId: params.id])
    }

    def definirCapa(){
        //TODO Funcionalidade quebrada p�s merge 03.07.2015 - equalizar metodos provenientes da listagem com metodos do detalhe
        def idFoto = Long.parseLong(params.idFoto)
        def idTema = Long.parseLong(params.idTema)
        def tema = Tema.findById(idTema)

        tema.fotoCapa.isCapa = false

        def foto = Foto.findById(idFoto)
        foto.isCapa = true

        redirect(controller: "tema", action: "detalhar", params: [id: idTema])
    }

    def deletarFoto(){}

    def processarUpload(){
        String applicationPath = request.getSession().getServletContext().getRealPath("")
        String nome = new Date().time.toString()
        String caminhoFotos = applicationPath+ "\\images\\uploads\\${nome}.png"

        println("JRT[${caminhoFotos}]")


        def novo = new File(caminhoFotos)

        novo.canRead()
        novo.canWrite()

        def downloadedFile = request.getFile("file")
        downloadedFile.tranferTo(novo)
    }


}

