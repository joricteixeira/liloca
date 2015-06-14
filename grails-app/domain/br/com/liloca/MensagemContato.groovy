package br.com.liloca

class MensagemContato {

    String nome
    String telefone
    String email
    String mensagem

    static constraints = {
        nome (minSize: 3)
        telefone (nullable: true, blank: true)
        email (nullable: true,blank: true, email: true)
        mensagem (minSize: 5)
    }

    static mapping = {
        table 'TB_MENSAGEM_CONTATO'
        version false

        id column: 'ID'
        nome column: 'NOME'
        telefone column: 'TELEFONE'
        email column: 'EMAIL'
        mensagem column: 'MENSAGEM', type: 'text'
    }
}
