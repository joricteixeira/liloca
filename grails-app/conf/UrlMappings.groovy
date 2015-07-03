class UrlMappings {

	static mappings = {
        //Site
        "/" (controller: "home", action: "index")
        "/tema" (controller: "busca", action:  "index")
        "/tema/$id" (controller: "detalhe", action: "index")

        //Admin
        "/admin" (controller: "dashBoard", action: "index")
        "/admin/recebidas"(controller: "dashBoard", action: "mensagensRecebidas")
        "/admin/enviadas" (controller: "dashBoard", action: "mensagensEnviadas")

        "/admin/tema" (controller: "tema", action: "listar")
        "/admin/tema/$id"{
            controller = "tema"
            action = "listar"
            constraints {
                id(matches:"\\d+")
            }
        }

        "/admin/decoracao" (controller: "decoracao", action: "index")
        "/admin/tema/$id/decoracao" (controller: "decoracao", action: "listar")
        "/admin/tema/decoracao/$id" (controller: "decoracao", action: "detalhar")

        "/admin/tema/decoracao/$id/propriedade" (controller: "propriedade", action: "index")
        "/admin/tema/decoracao/propriedade/$id" (controller: "propriedade", action: "index")

        "/admin/foto" (controller: "foto", action: "index")
        "/admin/tema/decoracao/$id/foto" (controller: "foto", action: "index")
        "/admin/tema/decoracao/foto/$id" (controller: "foto", action: "index")

        "500"(view:'/error')

        //TODO remover para go-live
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
	}
}
