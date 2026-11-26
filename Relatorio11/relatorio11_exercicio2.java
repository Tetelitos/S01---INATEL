import java.util.ArrayList;

class ItemDoCardapio {
    private String nome;
    private double preco;

    public ItemDoCardapio(String nome, double preco) {
        this.nome = nome;
        this.preco = preco;
    }

    public String getNome() { return nome; }

    public double getPreco() { return preco; }

    public double precoFinal() { return preco; }
}

class ComboLeblanc extends ItemDoCardapio {
    public ComboLeblanc(String nome, double preco) {
        super(nome, preco);
    }

    @Override
    public double precoFinal() {
        return getPreco() * 0.9;
    }
}

class CafeLeblanc {
    private ArrayList<ItemDoCardapio> cardapio;

    public CafeLeblanc() {
        cardapio = new ArrayList<>();
    }

    public void adicionar(ItemDoCardapio item) {
        cardapio.add(item);
    }

    public void mostrarCardapio() {
        for (ItemDoCardapio a : cardapio) {
            System.out.println(a.getNome() + " - R$ " + a.precoFinal());
        }
    }
}

public class Exercicio2 {
    public static void main(String[] args) {
        ItemDoCardapio a = new ItemDoCardapio("Cafe", 10);
        ItemDoCardapio b = new ItemDoCardapio("Curry", 20);
        ComboLeblanc c = new ComboLeblanc("Cafe e Curry", 30);

        CafeLeblanc cafe = new CafeLeblanc();

        cafe.adicionar(a);
        cafe.adicionar(b);
        cafe.adicionar(c);

        cafe.mostrarCardapio();
    }
}
