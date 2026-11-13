class Instrumentista
    attr_reader :nome, :instrumento
  
    def initialize(nome, instrumento)
      @nome = nome
      @instrumento = instrumento
    end
  
    def interpretar(peca)
      raise NotImplementedError, "Método não implementado"
    end
  end
  
  class Solista < Instrumentista
    def interpretar(peca)
      puts "#{@nome} toca #{@instrumento} e conduz a melodia principal de #{peca}"
    end
  end
  
  class Acompanhador < Instrumentista
    def interpretar(peca)
      puts "#{@nome} toca #{@instrumento} e acompanha o ritmo do solista em #{peca}"
    end
  end
  
  class Regente
    def initialize(nome)
      @nome = nome
      @orquestra = []
    end
  
    def convocar(instrumentista)
      @orquestra << instrumentista
    end
  
    def reger(peca)
      puts "#{@nome} está regendo #{peca}"
  
      @orquestra.each do |i|
        i.interpretar(peca)
      end
    end
  
    def escalacao
      @orquestra.map do |i|
        "#{i.class} - #{i.nome}"
      end
    end
  end
  
  solista = Solista.new("Kousei", "Piano")
  acompanhador = Acompanhador.new("Kaori", "Violino")
  regente = Regente.new("Hiroko")
  
  regente.convocar(solista)
  regente.convocar(acompanhador)
  
  regente.reger("Introdução e Rondó Caprichoso")
  
  regente.escalacao.each do |i|
    puts i
  end
  
  instrumentista = Instrumentista.new("Teste", "Piano")
