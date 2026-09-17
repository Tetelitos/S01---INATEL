#include <iostream>
#include <iomanip>
using namespace std;

int main() {
    float cap;
    float c = 0.0;
    float p;
    int x;

    cout << "Informe a capacidade maxima de carga do drone (kg): ";
    cin >> cap;

    do {
        cout << "\n=== SISTEMA DE CARGA DO DRONE ===" << endl;
        cout << "1. Verificar Carga" << endl;
        cout << "2. Carregar Pacote" << endl;
        cout << "3. Descarregar Pacote" << endl;
        cout << "4. Encerrar Operacao" << endl;
        cout << "Escolha uma opcao: ";
        cin >> x;

        if (x == 1) {
            cout << fixed << setprecision(2);
            cout << "\nCarga Atual: " << c << " kg / " << cap << " kg" << endl;
            cout << "Espaco Disponivel: " << cap - c << " kg" << endl;
        }

        else if (x == 2) {
            cout << "\nDigite o peso do pacote a ser carregado (kg): ";
            cin >> p;

            if (c + p > cap) {
                cout << "Alerta: Peso maximo de decolagem excedido! Operacao cancelada." << endl;
            }
            else {
                c += p;
                cout << "Pacote adicionado com sucesso!" << endl;
            }
        }

        else if (x == 3) {
            cout << "\nDigite o peso do pacote a ser descarregado (kg): ";
            cin >> p;

            if (p > c) {
                cout << "Nao e possivel remover mais peso do que a carga atual." << endl;
            }
            else {
                c -= p;
                cout << "Pacote descarregado com sucesso!" << endl;
            }
        }

        else if (x == 4) {
            cout << "\nEncerrando sistema de telemetria..." << endl;
        }

        else {
            cout << "\nOpcao invalida." << endl;
        }

    } while (x != 4);

    return 0;
}
