#include <iostream>
#include <string>
#include <vector>
using namespace std;

class Feitico {
public:
    string Nome;

    Feitico(string nome) {
        Nome = nome;
    }

    void Conjurar() {
        cout << "Conjurando: " << Nome << endl;
    }
};

class Grimorio {
private:
    vector<Feitico> lista;

public:
    Grimorio() : lista() {}

    void Registrar(string nomeFeitico) {
        lista.push_back(Feitico(nomeFeitico));
    }

    void ListarFeiticos() {
        cout << "Quantidade de feiticos: " << lista.size() << endl;

        for (Feitico& f : lista) {
            f.Conjurar();
        }
    }
};

class Companheiro {
public:
    string Nome;
    string Funcao;

    Companheiro(string nome, string funcao) {
        Nome = nome;
        Funcao = funcao;
    }

    void Apresentar() {
        cout << Nome << " - " << Funcao << endl;
    }
};

class Maga {
private:
    ::Grimorio Grimorio;
    vector<Companheiro*> grupo;

public:
    string Nome;

    Maga(string nome) : Grimorio() {
        Nome = nome;
    }

    ::Grimorio& grimorio() {
        return Grimorio;
    }

    void RecrutarCompanheiro(Companheiro& c) {
        grupo.push_back(&c);
    }

    void MostrarGrupo() {
        cout << "Grupo de " << Nome << endl;

        for (Companheiro* c : grupo) {
            c->Apresentar();
        }
    }
};

int main() {
    Companheiro fern("Fern", "Maga Aprendiz");
    Companheiro stark("Stark", "Guerreiro");
    Maga frieren("Frieren");

    frieren.RecrutarCompanheiro(fern);
    frieren.RecrutarCompanheiro(stark);

    frieren.grimorio().Registrar("Bola de fogo");
    frieren.grimorio().Registrar("Escudo");
    frieren.grimorio().Registrar("Cura");

    frieren.MostrarGrupo();
    frieren.grimorio().ListarFeiticos();

    stark.Apresentar();

    return 0;
}
