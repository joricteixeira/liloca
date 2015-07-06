package br.com.liloca.command

import grails.validation.Validateable

/**
 * Created by João on 03/07/2015.
 */
@Validateable
class TemaCommand {

    Long id
    String nome
    boolean destaque
    boolean ativo

    boolean temaNovo
}
