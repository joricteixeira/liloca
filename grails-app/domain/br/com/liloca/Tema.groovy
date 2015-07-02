package br.com.liloca

class Tema {

    String nome
    boolean destaque

    static hasMany = [decoracoes: Decoracao]

    static constraints = {
    }

    static mapping = {
        table 'TB_TEMA'
        version false

        id column: 'ID'
        nome column: 'NOME'
        destaque column: 'DESTAQUE'
    }

    def Foto getFotoCapa() {
        Foto.findByDecoracaoInListAndIsCapa(this.decoracoes, true)
    }

    boolean getVisivel(){
        //(this.decoracoes != null) && (this.decoracoes*.fotos != null)
        return true
    }

    def List<Foto> getFotos(){
        Foto.findAllByDecoracaoInList(this.decoracoes)
    }

    def String getNomeMinificado(){
        this.nome.replace(" ","").replaceAll("[^\\p{ASCII}]", "")
    }
}
