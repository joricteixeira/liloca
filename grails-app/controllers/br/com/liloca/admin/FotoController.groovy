package br.com.liloca.admin

import br.com.liloca.Decoracao
import br.com.liloca.Foto
import br.com.liloca.Tema
import grails.plugin.springsecurity.annotation.Secured

import javax.imageio.ImageIO
import java.awt.Graphics2D
import java.awt.image.BufferedImage

@Secured(['ROLE_ADMIN'])
class FotoController {

    def index() {
        render (view: "formNovaFoto", model: [decoracaoId: params.id])
    }

    def definirCapa(){
        def idFoto = Long.parseLong(params.idFoto)
        def idTema = Long.parseLong(params.idTema)
        def tema = Tema.findById(idTema)

        tema.fotoCapa.isCapa = false

        def foto = Foto.findById(idFoto)
        foto.isCapa = true

        render "Capa alterada com sucesso! <br><br> <a href='/admin/tema/${idTema}'>Voltar para o Tema</a>"
    }

    def deletarFoto(){}

    def processarUpload(){
        String applicationPath = request.getSession().getServletContext().getRealPath("")

        def downloadedFile = request.getFile("files[]") ?: request.getFile("file")

        String extensao = downloadedFile.originalFilename.replaceAll("^([^.]+)","")

        String nome = new Date().time.toString()+ "_original"
        String sufixo = "\\images\\uploads\\IMG_${nome}"+ extensao
        String caminhoFotos = applicationPath+ sufixo

        def novo = new File(caminhoFotos)
        downloadedFile.transferTo(novo)

        def urlRedimensionada = this.redimensionarFoto(novo)

        //Salvando no banco as informacoes
        def decoracao = Decoracao.findById(Long.parseLong(params.id))
        def fotoCriada = new Foto()
        fotoCriada.decoracao = decoracao
        fotoCriada.titulo = nome
        fotoCriada.url = urlRedimensionada//"/static"+ sufixo.replaceAll("\\\\","/")

        if(fotoCriada.save()){


            render(contentType: 'text/json'){
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

    String redimensionarFoto(File file) {
        BufferedImage original = ImageIO.read(file)
        def tamanhoMaximo = 600

        def L = original.width
        def A = original.height

        def razao
        if(L > A){
            razao = L/tamanhoMaximo
        }else{
            razao = A/tamanhoMaximo
        }

        def novoL = Integer.parseInt((new BigDecimal(L+".00")/razao).intValue().toString())
        def novaA = Integer.parseInt((new BigDecimal(A+".00")/razao).intValue().toString())

        BufferedImage redimensionada = new BufferedImage(novoL, novaA, BufferedImage.TYPE_INT_RGB)
        Graphics2D g = redimensionada.createGraphics()

        def extensao = file.path.replaceAll("^[^.]+\\.","")
        def inicioPath = file.path.replaceAll("\\.(.)+","").replaceAll("original","")

        def pathDoArquivoNovo = inicioPath+ "600."+ extensao
        def pathStatico = pathDoArquivoNovo.replaceAll("^.+images","/static/images").replaceAll("\\\\","/")

        g.drawImage(original,0,0,novoL, novaA,null)
        ImageIO.write(redimensionada, extensao, new File(pathDoArquivoNovo))

        file.delete()

        return pathStatico
    }
}

