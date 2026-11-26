import java.util.ArrayList;

abstract class Monstro {
    private String nome;

    public Monstro(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public abstract String receita();
}

class Slime extends Monstro {
    public Slime(String nome) {
        super(nome);
    }

    @Override
    public String receita() {
        return "Preparar uma sopa de slime";
    }
}

class Mandragora extends Monstro {
    public Mandragora(String nome) {
        super(nome);
    }

    @Override
    public String receita() {
        return "Cortar e fritar a mandragora";
    }
}

class Panela {
    private String material;

    public Panela(String material) {
        this.material = material;
    }

    public String getMaterial() {
        return material;
    }
}

class Cozinheiro {
    private String nome;
    private Panela panela;
    private ArrayList<Monstro> ingredientes;

    public Cozinheiro(String nome, String materialDaPanela) {
        this.nome = nome;
        panela = new Panela(materialDaPanela);
        ingredientes = new ArrayList<>();
    }

    public void adicionarIngrediente(Monstro monstro) {
        ingredientes.add(monstro);
    }

    public void servirBanquete() {
        System.out.println(nome);
        System.out.println("Panela de " + panela.getMaterial());

        for (Monstro a : ingredientes) {
            System.out.println(a.getNome() + " - " + a.receita());
        }
    }
}

public class Exercicio4 {
    public static void main(String[] args) {
        Slime a = new Slime("Slime Verde");
        Mandragora b = new Mandragora("Mandragora Gigante");

        Cozinheiro c = new Cozinheiro("Senshi", "Ferro");

        c.adicionarIngrediente(a);
        c.adicionarIngrediente(b);

        c.servirBanquete();
    }
}

// Composição: a panela é criada dentro do cozinheiro
// Agregação: os monstros são criados fora e adicionados ao cozinheiro
