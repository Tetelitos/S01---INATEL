use std::io;

fn acertou_o_alvo(palpite: i32, numero_secreto: i32) -> bool {
    let dif = (palpite - numero_secreto).abs();

    dif <= 5
}

fn main() {
    let numero_secreto: i32 = 42;

    loop {
        println!("Digite seu palpite:");

        let mut x = String::new();

        io::stdin()
            .read_line(&mut x)
            .expect("Erro ao ler o palpite");

        let palpite: i32 = x
            .trim()
            .parse()
            .expect("Digite um numero valido");

        if acertou_o_alvo(palpite, numero_secreto) {
            let dist = (palpite - numero_secreto).abs();

            println!("Parabens, voce acertou o alvo!");
            println!(
                "Voce ficou a apenas {} unidade(s) do numero secreto ({}).",
                dist,
                numero_secreto
            );

            break;
        } else {
            println!("Voce passou longe! Tente novamente.");
        }
    }
}
