class Pokemon {
    #vida;

    constructor(apelido, tipo, vidaInicial) {
        this.apelido = apelido;
        this.tipo = tipo;
        this.#vida = vidaInicial;
    }

    get vida() {
        return this.#vida;
    }

    sofrerDano(pontos) {
        this.#vida -= pontos;
        if (this.#vida < 0) {
            this.#vida = 0;
        }
        console.log(this.apelido + " ficou com " + this.#vida + " de vida");
    }

    atacar(alvo) {
        console.log(this.apelido + " usou Investida");
        alvo.sofrerDano(10);
    }
}

class Squirtle extends Pokemon {
    constructor(apelido, vidaInicial) {
        super(apelido, "Água", vidaInicial);
    }

    atacar(alvo) {
        console.log(this.apelido + " usou Jato de Água");
        alvo.sofrerDano(20);
    }
}

class Bulbasaur extends Pokemon {
    constructor(apelido, vidaInicial) {
        super(apelido, "Planta", vidaInicial);
    }

    atacar(alvo) {
        console.log(this.apelido + " usou Chicote de Vinha");
        alvo.sofrerDano(15);
    }
}

let a = new Squirtle("Bob", 50);
let b = new Bulbasaur("Fred", 30);

b.atacar(a);
a.atacar(b);
a.atacar(b);

console.log(a.vida);
console.log(b.vida);

// console.log(a.#vida);
