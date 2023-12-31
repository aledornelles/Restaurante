package Models;

import java.util.List;
import java.util.UUID;

public class Cardapio {

    private UUID uuid;
    private String nome;
    private String descricao;
    private boolean ativo;
    private Turno turno;
    private List<Produto> produtos;

    public static void main(String[] args) {

    }

    public void setAtivo(boolean ativo) {
        this.ativo = ativo;
    }

    public String getNome() {
        return nome;
    }

    public String getDescricao() {
        return descricao;
    }

    public boolean isAtivo() {
        return ativo;
    }
    
    public boolean desativar() {
        setAtivo(false);
        return true;
    }
    
    public boolean ativar() {
        setAtivo(true);
        return true;
    }
    
    public Cardapio(UUID uuid, boolean ativo) {
        this.uuid = uuid;
        this.ativo = ativo;
    }

}
