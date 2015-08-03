package br.com.liloca.admin

import br.com.liloca.Tema
import br.com.liloca.command.TemaCommand
import grails.test.mixin.Mock
import grails.test.mixin.TestFor
import grails.test.mixin.TestMixin
import grails.test.mixin.support.GrailsUnitTestMixin
import spock.lang.MockingApi
import spock.lang.Specification
import spock.lang.Unroll

/**
 * See the API for {@link grails.test.mixin.support.GrailsUnitTestMixin} for usage instructions
 */
@TestMixin(GrailsUnitTestMixin)
@TestFor(TemaController)
@Mock(Tema)
class TemaControllerSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    @Unroll
    void "test something"() {
        given:
            Tema tema = new Tema()
            tema.nome = "Teste"

            tema.ativo = temaAtivo
            tema.destaque = temaDestaque

            tema.save()

            TemaCommand command = new TemaCommand()
            command.id = tema.id

            command.ativo = commandAtivo
            command.destaque = commandDestaque


        when:
            controller.atualizaTema(command)
        then:
            tema.ativo == resultadoAtivo
            tema.destaque == resultadoDestaque

        where:
        temaAtivo | temaDestaque | commandAtivo | commandDestaque | resultadoAtivo | resultadoDestaque
        true      | false        | false         | false           | false          | false
        true      | true         | false         | false           | false          | false
        false     | false        | false         | false           | false          | false
        false     | true         | false         | false           | false          | false

        true      | false        | true         | false           | true          | false
        true      | true         | true         | false           | true          | false
        false     | false        | true         | false           | true          | false
        false     | true         | true         | false           | true          | false

        true      | false        | true         | true           | true          | true
        true      | true         | true         | true           | true          | true
        false     | false        | true         | true           | true          | true
        false     | true         | true         | true           | true          | true

        true      | false        | false         | true           | false         | true
        true      | true         | false        | true           | false          | true
        false     | false        | false        | true           | false          | true
        false     | true         | false        | true           | false          | true


    }
}
