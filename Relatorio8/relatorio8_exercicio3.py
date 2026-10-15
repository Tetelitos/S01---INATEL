class Persona:
    def __init__(self, nome, arcano):
        self.nome = nome
        self.arcano = arcano
    def invocar(self):
        print(f"Persona: {self.nome}, Arcano: {self.arcano}")

class Aliado:
    def __init__(self, nome, codinome):
        self.nome = nome
        self.codinome = codinome

class Lider:
    def __init__(self, codinome):
        self.codinome = codinome
        self.persona = Persona("Arsene", "Louco")
        self._equipe = []
    def recrutar(self, aliado: Aliado):
        self._equipe.append(aliado)
    def infiltrar(self, palacio):
        print(f"Palácio invadido: {palacio}")
        self.persona.invocar()
        print(f"Líder: {self.codinome}")

        for a in self._equipe:
            print(f"{a.nome} - {a.codinome}")

a = Aliado("Ryuji", "Skull")
b = Aliado("Ann", "Panther")

l = Lider("Joker")
l.recrutar(a)
l.recrutar(b)
l.infiltrar("Kamoshida")
