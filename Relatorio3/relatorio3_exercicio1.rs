use std::io;

fn validar_placa(placa: &str) -> bool {
    let t = placa.chars().count();
    let mut m = 0;
    let mut n = 0;

    for c in placa.chars() {
        if c.is_ascii_uppercase(){
            m += 1;
        }
        if c.is_numeric() {
            n += 1;
        }
    }
    t >= 7 && m >= 4 && n >= 2
}

fn main() {
    loop {
        println!("Digite a placa do veiculo:");

        let mut placa = String::new();

        let placa = placa.trim();

        if validar_placa(placa) {
            println!("Placa cadastrada no sistema!");
            break;
        } else {
            println!("Placa invalida. Tente novamente.");
        }
    }
}

// Não consegui. 
