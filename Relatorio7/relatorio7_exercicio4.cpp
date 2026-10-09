#include <iostream>
#include <string>
#include <vector>
using namespace std;

class EntidadeCosmica {
public:
    string Nome;
    string Origem;

    EntidadeCosmica(string nome) {
        Nome = nome;
        Origem = "Desconhecida";
        cout << "Entidade registrada: " << Nome << endl;
    }

    virtual void Manifestar() {
        cout << "Entidade: " << Nome << endl;

        if (Origem != "Desconhecida") {
            cout << "Origem: " << Origem << endl;
        }
    }
};

class Profundo : public EntidadeCosmica {
private:
    int Profundidade;

public:
    Profundo(string nome, int profundidade)
        : EntidadeCosmica(nome) {
        Profundidade = profundidade;
    }

    int profundidade() {
        return Profundidade;
    }

    void Manifestar() override {
        cout << Nome << " emerge de uma profundidade de "
             << Profundidade << " metros." << endl;
    }
};

class MiGo : public EntidadeCosmica {
public:
    string Artefato;

    MiGo(string nome, string artefato)
        : EntidadeCosmica(nome) {
        Artefato = artefato;
    }

    void Manifestar() override {
        EntidadeCosmica::Manifestar();
        cout << "Utiliza o artefato: " << Artefato << endl;
    }
};

class Pesquisador {
private:
    vector<EntidadeCosmica*> lista;

public:
    string Nome;

    Pesquisador(string nome) : lista() {
        Nome = nome;
    }

    void Catalogar(EntidadeCosmica& e) {
        lista.push_back(&e);
    }

    void LerCatalogo() {
        cout << "Catalogo de " << Nome << endl;

        for (EntidadeCosmica* e : lista) {
            e->Manifestar();
        }
    }
};

int main() {
    Profundo profundo("Profundo", 100);
    MiGo migo("MiGo", "Cilindro");
    migo.Origem = "Yuggoth";

    EntidadeCosmica entidade("A Cor que Caiu do Espaco");
    Pesquisador henry("Henry Armitage");

    henry.Catalogar(profundo);
    henry.Catalogar(migo);
    henry.Catalogar(entidade);

    henry.LerCatalogo();

    return 0;
}
