package br.com.liloca

import grails.transaction.Transactional

@Transactional
class TemaService {

    def excluirTema(Long id) {
        def tema = Tema.findAllById(id)
        Tema.deleteAll(tema)
    }

    def excluirDecoracao(Long id) {
        def decoracao = Decoracao.findById(id)
        Long temaId = decoracao.tema.id
        Decoracao.deleteAll(decoracao)

        return temaId
    }
}
