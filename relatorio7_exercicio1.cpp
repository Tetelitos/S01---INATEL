#include <iostream>
#include <string>
using namespace std;

class CombatenteDeGondor {
private:
    string Nome;
    string Povo;
    string Posto;
    int Circulo;
    string Armamento;
public:
    CombatenteDeGondor(string nome, string povo, string posto, int circulo)
        : Nome(nome), Povo(povo), Posto(posto), Circulo(circulo),
          Armamento("Desarmado") {
        cout << Nome << " foi convocado para defender Minas Tirith!\n";
    }

    string getNome() const { return Nome; }
    string getPovo() const { return Povo; }
    string getPosto() const { return Posto; }
    int getCirculo() const { return Circulo; }
    string getArmamento() const { return Armamento; }

    void Equipar(string arma) {
        Armamento = arma;
    }

    void ApresentarUnidade() const {
        cout << "\nNome: " << Nome
             << "\nPovo: " << Povo
             << "\nPosto: " << Posto
             << "\nCirculo: " << Circulo << '\n';

        if (Armamento != "Desarmado") {
            cout << "Armamento: " << Armamento << '\n';
        }
    }
};

int main() {
    CombatenteDeGondor legolas("Legolas", "Elfo", "Arqueiro", 1);
    legolas.Equipar("Arco dos Galadhrim");

    CombatenteDeGondor peregrin(
        "Peregrin Took", "Hobbit", "Guarda da Cidadela", 7
    );

    CombatenteDeGondor aragorn("Aragorn", "Humano", "Guerreiro", 3);
    aragorn.Equipar("Anduril");

    legolas.ApresentarUnidade();
    peregrin.ApresentarUnidade();
    aragorn.ApresentarUnidade();

    return 0;
}
