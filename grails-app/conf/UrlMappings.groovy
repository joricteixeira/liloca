class UrlMappings {

	static mappings = {


        //TODO remover para go-live
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        //Site
        "/" (controller: "home", action: "index")
        "/tema" (controller: "busca", action:  "index")
        "/tema/$id" (controller: "detalhe", action: "index")

        //Admin
        "/admin" (controller: "dashBoard", action: "index")

        "500"(view:'/error')
	}
}
