package br.com.liloca.admin

import br.com.liloca.Decoracao
import br.com.liloca.Foto
import br.com.liloca.Tema
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class FotoController {

    def index() {
        render (view: "formNovaFoto", model: [decoracaoId: params.id])
    }

    def definirCapa(){
        //TODO Funcionalidade quebrada pos merge 03.07.2015 - equalizar metodos provenientes da listagem com metodos do detalhe
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

        def downloadedFile = request.getFile("files[]") ?: request.getFile("file")

        String extensao = downloadedFile.originalFilename.replaceAll("^([^.]+)","")
        String sufixo = "\\images\\uploads\\IMG_${nome}"+ extensao
        String caminhoFotos = applicationPath+ sufixo

        def novo = new File(caminhoFotos)

        downloadedFile.transferTo(novo)

        def decoracao = Decoracao.findById(Long.parseLong(params.id))

        def fotoCriada = new Foto()
        fotoCriada.decoracao = decoracao
        fotoCriada.titulo = nome
        fotoCriada.url = "/static"+ sufixo.replaceAll("\\\\","/")

        if(fotoCriada.save()){


            render(contentType: 'text/json'){
                //["files":["0":["url":fotoCriada.url]]]

                [
                "files":[
                        [
                            "url":fotoCriada.url,
                            "thumbnailUrl": fotoCriada.url,
                            "name": downloadedFile.originalFilename,
                            "type": downloadedFile.contentType,
                            "size": downloadedFile.size
                            ]
                    ]
                ]
            }

        }else{
            render "2"
        }
    }


}

