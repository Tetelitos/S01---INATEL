abstract class Morador {
    private String nome;
    public Morador(String nome) {
        this.nome = nome;
    }
    public String getNome() {
        return nome;
    }

  
    public abstract void apresentar();
}

class Mago extends Morador {
    private String feitico;

    public Mago(String nome, String feitico) {
        super(nome);
        this.feitico = feitico;
    }
    @Override
    public void apresentar() {
        System.out.println(getNome() + " usa o feitico " + feitico);
    }
}

class DemonioDoFogo extends Morador {
    public DemonioDoFogo(String nome) {
        super(nome);
    }
    @Override
    public void apresentar() {
        System.out.println(getNome() + " faz o castelo andar");
    }
}

public class Exercicio1 {
    public static void main(String[] args) {
        Morador a = new Mago("Howl", "Transformacao");
        Morador b = new DemonioDoFogo("Calcifer");
        a.apresentar();
        b.apresentar();

        // Morador c = new Morador("Sophie");
    }
}
