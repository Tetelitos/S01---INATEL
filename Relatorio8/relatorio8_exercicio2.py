class HeroiOverwatch:
    def __init__(self, codinome, funcao):
        self.codinome = codinome
        self.funcao = funcao

    def usar_suprema(self):
        print(f"{self.codinome} usou uma suprema genérica!")

class HeroiTanque(HeroiOverwatch):
    def usar_suprema(self):
        print(f"{self.codinome} usou uma suprema de tanque!")

class HeroiSuporte(HeroiOverwatch):
    def usar_suprema(self):
        print(f"{self.codinome} usou uma suprema de suporte!")

    def curar_equipe(self):
        print(f"{self.codinome} curou a equipe!")

lista: list[HeroiOverwatch] = [
    HeroiOverwatch("Soldado 76", "Dano"),
    HeroiTanque("Reinhardt", "Tanque"),
    HeroiSuporte("Mercy", "Suporte")
]

for h in lista:
    h.usar_suprema()

    if isinstance(h, HeroiSuporte):
        h.curar_equipe()
