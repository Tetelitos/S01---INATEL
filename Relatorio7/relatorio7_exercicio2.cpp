#include <iostream>
#include <string>
#include <vector>
using namespace std;

class Pokemon {
private:
    string Especie;
    int Nivel;

public:
    Pokemon(string especie, int nivel) {
        Especie = especie;
        Nivel = nivel;
    }

    string especie() {
        return Especie;
    }

    int nivel() {
        return Nivel;
    }

    virtual void EntrarEmCampo() {
        cout << Especie << " - Nivel " << Nivel << endl;
        cout << "Ataque: Investida" << endl;
    }
};

class TipoPlanta : public Pokemon {
private:
    string GolpeEspecial;

public:
    TipoPlanta(string especie, int nivel, string golpe)
        : Pokemon(especie, nivel) {
        GolpeEspecial = golpe;
    }

    string golpe() {
        return GolpeEspecial;
    }

    void EntrarEmCampo() override {
        cout << especie() << " - Nivel " << nivel() << endl;
        cout << "Ataque: " << GolpeEspecial << endl;
    }
};

class TipoEletrico : public Pokemon {
private:
    int Voltagem;

public:
    TipoEletrico(string especie, int nivel, int voltagem)
        : Pokemon(especie, nivel) {
        Voltagem = voltagem;
    }

    int v() {
        return Voltagem;
    }

    void EntrarEmCampo() override {
        Pokemon::EntrarEmCampo();
        cout << "Descarga eletrica: " << Voltagem << " volts" << endl;
    }
};

int main() {
    TipoPlanta sceptile("Sceptile", 5, "Investida");
    TipoEletrico jolteon("Jolteon", 5, 10000);
    Pokemon eevee("Eevee", 5);

    vector<Pokemon*> pokemons = {&sceptile, &jolteon, &eevee};

    cout << "Quantidade de Pokemon em campo: " << pokemons.size() << endl;

    for (Pokemon* pokemon : pokemons) {
        pokemon->EntrarEmCampo();
    }

    return 0;
}
