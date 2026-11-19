class FichaDeCriatura {
    constructor(criatura, nivelDePerigo) {
        this.criatura = criatura;
        this.nivelDePerigo = nivelDePerigo;
    }

    descrever() {
        return this.criatura + " - Perigo: " + this.nivelDePerigo;
    }
}

class DiarioMisterioso {
    #fichas = [];

    constructor(numero) {
        this.numero = numero;
    }

    anotar(criatura, nivelDePerigo) {
        this.#fichas.push(new FichaDeCriatura(criatura, nivelDePerigo));
    }

    exibirFichas() {
        console.log("Diário " + this.numero);
        this.#fichas.forEach(a => console.log(a.descrever()));
    }
}

class Funcionario {
    constructor(nome, cargo) {
        this.nome = nome;
        this.cargo = cargo;
    }
}

class CabanaDoMisterio {
    #funcionarios = [];

    constructor(dono) {
        this.dono = dono;
    }

    contratar(funcionario) {
        this.#funcionarios.push(funcionario);
    }

    abrirAsPortas() {
        console.log("Dono: " + this.dono);
        this.#funcionarios.forEach(a => console.log(a.nome + " - " + a.cargo));
    }
}

let diario = new DiarioMisterioso(3);

diario.anotar("Bill Cipher", 10);
diario.anotar("Gnomo", 3);
diario.anotar("Metamorfo", 8);

diario.exibirFichas();

let a = new Funcionario("Soos", "Faxineiro");
let b = new Funcionario("Wendy", "Atendente");

let cabana = new CabanaDoMisterio("Stan");

cabana.contratar(a);
cabana.contratar(b);

cabana.abrirAsPortas();
