import java.util.HashMap;

interface Sobrenatural {
    void manifestar();
}

class Alienigena implements Sobrenatural {
    private String nome;

    public Alienigena(String nome) {
        this.nome = nome;
    }

    @Override
    public void manifestar() {
        System.out.println(nome + " apareceu em uma nave");
    }
}

class EspiritoYoukai implements Sobrenatural {
    private String nome;

    public EspiritoYoukai(String nome) {
        this.nome = nome;
    }

    @Override
    public void manifestar() {
        System.out.println(nome + " comecou a perseguir os estudantes");
    }
}

class MapaDeAvistamentos {
    private HashMap<String, Sobrenatural> avistamentos;

    public MapaDeAvistamentos() {
        avistamentos = new HashMap<>();
    }

    public void registrar(String local, Sobrenatural ser) {
        avistamentos.put(local, ser);
    }

    public void investigar(String local) {
        Sobrenatural a = avistamentos.get(local);

        if (a == null) {
            System.out.println(local + " esta tranquilo");
        } else {
            a.manifestar();
        }
    }
}

public class Exercicio3 {
    public static void main(String[] args) {
        Alienigena a = new Alienigena("Serpo");
        EspiritoYoukai b = new EspiritoYoukai("Turbo Granny");

        MapaDeAvistamentos mapa = new MapaDeAvistamentos();

        mapa.registrar("Hospital", a);
        mapa.registrar("Tunel", b);

        mapa.investigar("Hospital");
        mapa.investigar("Tunel");
        mapa.investigar("Escola");
    }
}
