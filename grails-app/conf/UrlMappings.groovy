class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/i"(view:"/index")
        "/" (view: "home/temp_contato")

        "500"(view:'/error')
	}
}
