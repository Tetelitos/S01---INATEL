package main

import "fmt"

func main() {
	var t1, t2, t3 int

	fmt.Print("Digite as vendas do 1º trimestre: ")
	fmt.Scanln(&t1)
	fmt.Print("Digite as vendas do 2º trimestre: ")
	fmt.Scanln(&t2)
	fmt.Print("Digite as vendas do 3º trimestre: ")
	fmt.Scanln(&t3)
	x := t1 + t2 + t3
	fmt.Println("Total de vendas:", x, "unidades")

	if x < 100 {
		fmt.Println("Meta mínima anual não atingida!")
		return
	}

	switch {
	case x >= 250:
		fmt.Println("Classificação: Categoria Top Seller")
	case x >= 180:
		fmt.Println("Classificação: Categoria Sênior")
	case x >= 100:
		fmt.Println("Classificação: Categoria Pleno")
	}
}
