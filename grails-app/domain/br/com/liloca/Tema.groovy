package br.com.liloca

class Tema {

    String nome
    boolean destaque
    boolean ativo

    static hasMany = [decoracoes: Decoracao]

    static constraints = {
    }

    static mapping = {
        table 'TB_TEMA'
        version false

        id column: 'ID'
        nome column: 'NOME'
        destaque column: 'DESTAQUE'
        ativo column: 'ATIVO'
    }

    def Foto getFotoCapa() {
        if(this.decoracoes != null && this.decoracoes.size() > 0) {
            return Foto.findByDecoracaoInListAndIsCapa(this.decoracoes, true)
        }else{
            return new Foto(url: "http://letsgodev.com/wp-content/uploads/2014/08/placeholder.png", titulo: "placeholder", isCapa: true)
        }
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
