module Depoente
    def depor
      raise NotImplementedError
    end
  end
  
  module Detivel
    def ser_detido
      puts "#{nome} foi levado pela Scotland Yard"
    end
  end
  
  class Envolvido
    attr_reader :nome
  
    def initialize(nome)
      @nome = nome
    end
  end
  
  class TestemunhaOcular < Envolvido
    include Depoente
  
    def depor
      puts "#{@nome} viu uma pessoa saindo da cena do crime"
    end
  end
  
  class SuspeitoDoCrime < Envolvido
    include Depoente
    include Detivel
  
    def depor
      puts "#{@nome} afirma que estava em casa no momento do crime"
    end
  end
  
  class Investigacao
    def initialize(caso)
      @caso = caso
      @envolvidos = []
    end
  
    def registrar(envolvido)
      @envolvidos << envolvido
    end
  
    def ouvir_todos
      puts "Caso: #{@caso}"
  
      @envolvidos.each do |e|
        e.depor
      end
    end
  
    def acionar_scotland_yard
      suspeitos = @envolvidos.select do |e|
        e.respond_to?(:ser_detido)
      end
  
      suspeitos.each do |s|
        s.ser_detido
      end
    end
  end
    t = TestemunhaOcular.new("John Watson")

  s1 = SuspeitoDoCrime.new("James Moriarty")
  s2 = SuspeitoDoCrime.new("Sebastian Moran")
  
  investigacao = Investigacao.new("Mistério de Baker Street")
  
  investigacao.registrar(t)
  investigacao.registrar(s1)
  investigacao.registrar(s2)
  
  investigacao.ouvir_todos
  investigacao.acionar_scotland_yard
