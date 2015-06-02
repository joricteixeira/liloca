package br.com.liloca.mail

class MailController {

    def emailService

    def enviarEmail(MailFormCommand mailFormCommand) {

        def sucesso = false
        def mensagemEnvio

        if(emailService.enviarEmail(mailFormCommand)){
            sucesso = true
            mensagemEnvio = "Mensagem enviada com sucesso!"
        }else{
            mensagemEnvio = "Ocorreu um erro no envio, tente novamente mais tarde!"
        }

        render (view:  "/main/temp_contato", model: [sucessoEnvio: sucesso, mensagemEnvio: mensagemEnvio])
    }
}
