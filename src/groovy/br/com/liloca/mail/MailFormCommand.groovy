package br.com.liloca.mail

import grails.validation.Validateable

/**
 * Created by João on 01/05/2015.
 */
@Validateable
class MailFormCommand {

    String nome
    String telefone
    String email
    String mensagem

    static constraints = {
        nome(nullable: false, blank: false, minSize: 3)
        telefone(nullable: true, blank: true)
        email(nullable: true, blank: true, email: true)
        mensagem(nullable: false, blank: false, minSize: 5)
    }

    String getMensagemFormatada() {
        StringBuilder s = new StringBuilder()
        s.append("Nome: "+ nome+ "\n")
        s.append("Telefone: "+ telefone+ "\n")
        s.append("Email: "+ email+ "\n")
        s.append("Mensagem: "+ mensagem)

        return s.toString()
    }
}
