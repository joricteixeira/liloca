package br.com.liloca

import grails.transaction.Transactional

@Transactional
class TemaService {

    def excluirTema(Long id) {
        def tema = Tema.findAllById(id)
        Tema.deleteAll(tema)
    }
}
