package br.com.liloca.command

import grails.validation.Validateable

/**
 * Created by João on 03/07/2015.
 */
@Validateable
class DecoracaoCommand {

    Long id
    String nome
    BigDecimal valor
    boolean decoracaoNova
    Long temaId
}
