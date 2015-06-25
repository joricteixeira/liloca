import br.com.liloca.admin.*

class BootStrap {

    def init = { servletContext ->

        def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
        def userRole = new Role(authority: 'ROLE_USER').save(flush: true)

        def testUser = new Gerenciador(username: 'me', password: 'password')
        testUser.save(flush: true)

        GerenciadorRole.create testUser, adminRole, true

        assert Gerenciador.count() == 1
        assert Role.count() == 2
        assert GerenciadorRole.count() == 1

    }
    def destroy = {
    }
}
