class UsuarioDeNen {
    constructor(nome) {
        this.nome = nome;
    }

    atacar(alvo) {
        console.log(this.nome + " usou um ataque de aura contra " + alvo.nome);
    }
}

class Intensificador extends UsuarioDeNen {
    atacar(alvo) {
        console.log(this.nome + " usou um soco de aura contra " + alvo.nome);
    }
}

class Transmutador extends UsuarioDeNen {
    atacar(alvo) {
        console.log(this.nome + " usou um ataque elétrico contra " + alvo.nome);
    }
}

class Materializador extends UsuarioDeNen {
    atacar(alvo) {
        console.log(this.nome + " usou correntes contra " + alvo.nome);
    }
}

class Aranha {
    constructor(nome, numero) {
        this.nome = nome;
        this.numero = numero;
    }
}

class TrupeFantasma {
    #aranhas;

    constructor(cidade, aranhas = []) {
        this.cidade = cidade;
        this.#aranhas = aranhas;
    }

    revelarAranhas() {
        console.log(this.cidade);
        this.#aranhas.forEach(a => console.log(a.numero + " - " + a.nome));
    }

    buscarAranha(numero) {
        return this.#aranhas.find(a => a.numero === numero);
    }
}

let a = new Aranha("Uvogin", 11);
let b = new Aranha("Feitan", 2);

let trupe = new TrupeFantasma("Yorknew", [a, b]);

trupe.revelarAranhas();

let alvo = trupe.buscarAranha(11);

let hunters = [
    new Intensificador("Gon"),
    new Transmutador("Killua"),
    new Materializador("Kurapika")
];

hunters.forEach(a => a.atacar(alvo));
