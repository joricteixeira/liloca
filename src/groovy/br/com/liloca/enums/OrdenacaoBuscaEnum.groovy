package br.com.liloca.enums

/**
 * Created by João on 02/07/2015.
 */
public enum OrdenacaoBuscaEnum {
    POR_NOME_CRESCENTE(1,"Nome"," ORDER BY T.nome ASC"),
    POR_MAIS_RECENTE(2, "Mais recente", " ORDER BY T.id DESC"),
    POR_MAIS_ANTIGO(3, "Mais antigo", " ORDER BY T.id ASC")

    int identificador
    String valorExibicao
    String valorQuery

    private OrdenacaoBuscaEnum(int identificador, String valorExibicao, String valorQuery){
        this.identificador = identificador
        this.valorExibicao = valorExibicao
        this.valorQuery = valorQuery
    }

    public static OrdenacaoBuscaEnum findByIdentificador(int identificador){
        for(ordenacaoBuscaEnum in OrdenacaoBuscaEnum.enumConstants){
            if(ordenacaoBuscaEnum.identificador == identificador){
                return ordenacaoBuscaEnum
            }
        }
    }
}