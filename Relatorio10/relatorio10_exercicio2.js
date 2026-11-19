class Pistola {
    constructor(modelo) {
        this.modelo = modelo;
    }
}

class AgenteProtocolo {
    #pistola;

    constructor(codinome, modeloDaPistola) {
        this.codinome = codinome;
        this.#pistola = new Pistola(modeloDaPistola);
    }

    usarHabilidade() {
        throw new Error("Habilidade não implementada");
    }

    entrarEmCombate() {
        console.log(this.codinome + " - " + this.#pistola.modelo + " - " + this.usarHabilidade());
    }
}

class Controlador extends AgenteProtocolo {
    usarHabilidade() {
        return "Lançou uma fumaça";
    }
}

class Iniciador extends AgenteProtocolo {
    usarHabilidade() {
        return "Revelou os inimigos";
    }
}

class Duelista extends AgenteProtocolo {
    usarHabilidade() {
        return "Avançou contra os inimigos";
    }
}

class Esquadrao {
    #agentes;

    constructor(nome, agentes) {
        this.nome = nome;
        this.#agentes = agentes;
    }

    iniciarPartida() {
        console.log(this.nome);
        this.#agentes.forEach(a => a.entrarEmCombate());
    }

    listarControladores() {
        return this.#agentes.filter(a => a instanceof Controlador);
    }
}

let a = new Controlador("Omen", "Ghost");
let b = new Controlador("Brimstone", "Classic");
let c = new Iniciador("Sova", "Sheriff");
let d = new Duelista("Phoenix", "Frenzy");

let equipe = new Esquadrao("Alpha", [a, b, c, d]);

equipe.iniciarPartida();

equipe.listarControladores().forEach(a => console.log(a.codinome));

let agente = new AgenteProtocolo("Teste", "Classic");
