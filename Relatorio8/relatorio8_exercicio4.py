from abc import ABC, abstractmethod

class UnidadeDeRede(ABC):
    @abstractmethod
    def executar_invasao(self):
        pass

class Cyberdeck:
    def __init__(self, modelo):
        self.modelo = modelo

class OperadorNetrunner(UnidadeDeRede):
    def __init__(self, nome, modelo):
        self.nome = nome
        self.cyberdeck = Cyberdeck(modelo)

    def executar_invasao(self):
        print(f"{self.nome} usa {self.cyberdeck.modelo} para quebrar o gelo (ICE) de um servidor.")

class DroneDeVigilancia(UnidadeDeRede):
    def __init__(self, codigo):
        self.codigo = codigo

    def executar_invasao(self):
        print(f"Drone {self.codigo} está interceptando o sinal da rede.")

class CelulaHacker:
    def __init__(self, nome, membros: list[UnidadeDeRede]):
        self.nome = nome
        self.membros = membros

    def iniciar_ataque(self):
        print(f"Célula: {self.nome}")

        for m in self.membros:
            m.executar_invasao()

n = OperadorNetrunner("V", "Militech")
d = DroneDeVigilancia("D5")

c = CelulaHacker("Night City", [n, d])
c.iniciar_ataque()
