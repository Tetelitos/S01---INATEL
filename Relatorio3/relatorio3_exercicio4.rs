use std::io;

fn calcular_pontuacao(prova1: f64, prova2: f64, redacao: f64) -> f64 {
    let npt = (prova1 + prova2) / 2.0;
    let pf = npt * 0.6 + redacao * 0.4;

    if pf >= 60.0 {
        println!("Parabens! Candidato aprovado no processo seletivo.");
    } else {
        println!("Infelizmente o candidato nao atingiu a pontuacao minima de aprovacao.");
    }

    pf
}

fn main() {
    println!("Digite a nota da Prova Teorica 1:");

    let mut x = String::new();

    io::stdin()
        .read_line(&mut x)
        .expect("Erro");

    let prova1: f64 = x.trim().parse().expect("Digite um numero valido");

    println!("Digite a nota da Prova Teorica 2:");

    let mut x = String::new();

    io::stdin()
        .read_line(&mut x)
        .expect("Erro");

    let prova2: f64 = x.trim().parse().expect("Digite um numero valido");

    println!("Digite a nota da Redacao:");

    let mut x = String::new();

    io::stdin()
        .read_line(&mut x)
        .expect("Erro");

    let redacao: f64 = x.trim().parse().expect("Digite um numero valido");

    let resultado = calcular_pontuacao(prova1, prova2, redacao);

    println!("Pontuacao Final: {:.2}", resultado);
}
