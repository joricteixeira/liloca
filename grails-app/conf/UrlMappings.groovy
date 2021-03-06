class UrlMappings {

	static mappings = {
        //Site
        "/" (controller: "home", action: "index")
        "/tema" (controller: "busca", action:  "index")
        "/tema/$id" (controller: "detalhe", action: "index")

        //Admin
        "/admin" (controller: "dashBoard", action: "index")
        "/admin/mensagensLidas" (controller: "dashBoard", action:  "mensagensLidas")

        "/admin/tema" (controller: "tema", action: "listar")
        "/admin/tema/$id"{
            controller = "tema"
            action = [GET:"detalhar", POST:"atualizar"]
            constraints {
                id(matches:"\\d+")
            }
        }
        "/admin/tema/novo"(controller: "tema", action: "novo")
        "/admin/tema/$id/ativar"(controller: "tema", action: "ativar")
        "/admin/tema/$id/desativar"(controller: "tema", action: "desativar")
        "/admin/tema/$id/excluir" (controller: "tema", action: "excluir")

        "/admin/decoracao" (controller: "decoracao", action: "index")
        "/admin/tema/$id/decoracao" (controller: "decoracao", action: "listar")
        "/admin/tema/$id/decoracao/novo" (controller: "decoracao", action: "novo")
        "/admin/tema/decoracao/$id/excluir" (controller: "decoracao", action: "excluir")
        "/admin/tema/decoracao/$id"{
            controller = "decoracao"
            action = [GET:"detalhar", POST:"atualizar"]
            constraints {
                id(matches:"\\d+")
            }
        }

        "/admin/tema/decoracao/$id/propriedade"{
            controller = "propriedade"
            action = [GET: "index", POST: "criar"]
        }
        "/admin/tema/decoracao/propriedade/$id" (controller: "propriedade", action: "index")
        "/admin/tema/decoracao/$decoracaoId/propriedade/$id/excluir" (controller: "propriedade", action: "excluir")
        "/admin/tema/decoracao/propriedade/$id/excluir" (controller: "propriedade", action: "excluir")

        "/admin/foto" (controller: "foto", action: "index")
        "/admin/tema/decoracao/$id/foto"{
            controller = "foto"
            action = [GET: "index", POST: "processarUpload"]
        }
        "/admin/tema/decoracao/$id/foto/deletar"(controller: "foto", action: "deletarFoto")
        "/admin/tema/decoracao/foto/$id" (controller: "foto", action: "index")
        "/admin/tema/$idTema/decoracao/foto/$idFoto" (controller: "foto", action: "definirCapa")


        "/admin/mensagem/$id/marcarLida" (controller: "dashBoard", action: "marcarLida")
        "/admin/mensagem/$id/marcarNaoLida" (controller: "dashBoard", action: "marcarNaoLida")

        "500"(view:'/error')



        //TODO excluir para go-live
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }


	}
}
