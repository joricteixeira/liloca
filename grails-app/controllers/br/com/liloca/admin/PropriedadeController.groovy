package br.com.liloca.admin

import br.com.liloca.Decoracao
import br.com.liloca.Propriedade
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class PropriedadeController {

    def index() {
        render 'OK'
    }

    def criar() {
        def propriedade = new Propriedade()
        propriedade.decoracao = Decoracao.findById(Long.parseLong(params.id))
        propriedade.descricao = params.descricao

        if(propriedade.save()){
            render "Salvo com sucesso <br> <a href='/admin/tema/decoracao/${params.id}'>Voltar</a> "
        } else{
            render "Erro, tentar novamente mais tarde. <br> <a href='/admin/tema/decoracao/${params.id}'>Voltar</a> "
        }
    }

    def excluir(){

        def propriedades = Propriedade.findAllById(Long.parseLong(params.id))
        Propriedade.deleteAll(propriedades)

        render "Removido com sucesso <br> <a href='/admin/tema/decoracao/${params.decoracaoId}'>Voltar</a> "
    }
}
