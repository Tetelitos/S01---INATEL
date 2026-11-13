class CoquetelAfterlife
  attr_reader :nome

  def initialize(nome, preco)
    @nome = nome
    @_preco = preco
  end

  def preco
    @_preco
  end
  def preco=(valor)
    if valor >= 5 && valor <= 200
      @_preco = valor
    else
      puts "Preço inválido!"
    end
  end

  def ficha
    "#{@nome} - R$ #{@_preco}"
  end
end

class DrinkDeLenda < CoquetelAfterlife
  attr_reader :lenda

  def initialize(nome, preco, lenda)
    super(nome, preco)
    @lenda = lenda
  end

  def ficha
    "#{super} - Lenda: #{@lenda}"
  end
end

drinks = [
  CoquetelAfterlife.new("Afterlife", 25),
  DrinkDeLenda.new("Johnny Silverhand", 50, "Johnny Silverhand"),
  DrinkDeLenda.new("David Martinez", 45, "David Martinez")
]

drinks.each do |drink|
  puts drink.ficha
end

drinks[1].preco = 500
drinks[1].preco = 80

puts drinks[1].ficha
