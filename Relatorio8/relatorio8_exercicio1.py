class MortoVivo:
    def __init__(self, nome, almas, estus):
        self.nome = nome
        self._almas = almas
        self.__estus = 0
        self.set_estus(estus)
    def get_estus(self):
        return self.__estus
    def set_estus(self, quantidade):
        if 0 <= quantidade <= 10:
            self.__estus = quantidade
        else:
            print("Quantidade de Estus inválida!")
    def mostrar_status(self):
        return f"Nome: {self.nome}, Almas: {self._almas}, Estus: {self.__estus}"

class Clerigo(MortoVivo):
    def __init__(self, nome, almas, estus, milagre):
        super().__init__(nome, almas, estus)
        self.milagre = milagre
    def mostrar_status(self):
        return f"{super().mostrar_status()}, Milagre: {self.milagre}"

c = Clerigo("Solaire", 5, 5, "Cura")
print(c.mostrar_status())

c.set_estus(15)
print(c.mostrar_status())

c.set_estus(10)
print(c.mostrar_status())
