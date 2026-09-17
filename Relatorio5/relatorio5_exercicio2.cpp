#include <iostream>
using namespace std;

float calcular_confiabilidade_sistema(float probabilidades[], int tamanho) {
    float total = 1;
    for (int i = 0; i < tamanho; i++) {
        total *= probabilidades[i];
    }
    return total;
}

int main() {
    int n;

    cout << "Digite a quantidade de componentes: ";
    cin >> n;

    float probabilidades[n];

    for (int i = 0; i < n; i++) {
        cout << "Digite a probabilidade do componente " << i + 1 << ": ";
        cin >> probabilidades[i];
    }

    float total = calcular_confiabilidade_sistema(probabilidades, n);

    cout << "Confiabilidade total do sistema: " << total << endl;

    return 0;
}
