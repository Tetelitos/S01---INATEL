class PhoneWave
  def enviar_dmail(mensagem)
    puts "Mensagem: #{mensagem}"
    puts "Mensagem enviada para o passado!"
  end
end

class MembroDoLab
  attr_reader :numero, :nome

  def initialize(numero, nome)
    @numero = numero
    @nome = nome
  end
end

class LaboratorioDeGadgets
  def initialize
    @phonewave = PhoneWave.new
    @membros = []
end

  def admitir(membro)
    @membros << membro
    puts "#{membro.numero} - #{membro.nome} entrou no laboratório"
  end

  def experimento(mensagem)
    @membros.each do |m|
      puts "#{m.numero} - #{m.nome}"
    end

    @phonewave.enviar_dmail(mensagem)
end
end

m1 = MembroDoLab.new(1, "Okabe")
m2 = MembroDoLab.new(2, "Mayuri")

lab = LaboratorioDeGadgets.new

lab.admitir(m1)
lab.admitir(m2)

lab.experimento("El Psy Kongroo")
