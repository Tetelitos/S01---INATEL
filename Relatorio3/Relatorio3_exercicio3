use std::io;

fn imprimir_terminados_em(digito: i32, limite_inferior: i32, limite_superior: i32) {
    for i in limite_inferior..=limite_superior {
        if i % 10 == digito {
            println!("{}", i);
        }
    }
}

fn main() {
    println!("Digite o digito final desejado (0 a 9):");

    let mut x = String::new();

    io::stdin()
        .read_line(&mut x)
        .expect("Erro");

    let digito: i32 = x
        .trim()
        .parse()
        .expect("Digite um numero valido");

    println!("Digite o limite inferior:");

    let mut x = String::new();

    io::stdin()
        .read_line(&mut x)
        .expect("Erro");

    let limite_inferior: i32 = x
        .trim()
        .parse()
        .expect("Digite um numero valido");

    println!("Digite o limite superior:");

    let mut x = String::new();

    io::stdin()
        .read_line(&mut x)
        .expect("Erro");

    let limite_superior: i32 = x
        .trim()
        .parse()
        .expect("Digite um numero valido");

    imprimir_terminados_em(digito, limite_inferior, limite_superior);
}
