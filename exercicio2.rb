require './caixa'
require './cliente'

class Banco
  attr_accessor :caixas, :clientes, :clientes_atrasados, :hora_atendimento_agencia

  def initialize(input)
    input = input.split("\n")
    @clientes_atrasados = 0
    @hora_atendimento_agencia = 0

    @caixas = input.shift.split().first.to_i
    @caixas = (1..@caixas).map do
      Caixa.new
    end

    @clientes = input.map do |cliente_info|
      c = Cliente.new(*cliente_info.split(" ").map(&:to_i))
    end
  end

  def iniciar_expediente
    until clientes.empty? do
      clientes.each do |cliente|
        if(hora_atendimento_agencia >= cliente.chegada)
          caixas.each do |caixa|
            if(hora_atendimento_agencia >= caixa.disponivel_em)
              caixa.disponivel_em = cliente.duracao_atendimento + hora_atendimento_agencia

              atendimentos_atrasados(cliente.chegada)
              atendimento_concluido
              break
            end
          end
        end
      end

      self.hora_atendimento_agencia += 1
    end
  end

  def atendimentos_atrasados(chegada)
    self.clientes_atrasados += 1 if (hora_atendimento_agencia - chegada > 20)
  end

  def atendimento_concluido
    self.clientes.shift
  end
end

# Exibindo o resultado

resultado1 = Banco.new(File.read("input1.txt"))
resultado1.iniciar_expediente
puts "Entrada arquivo ./input1.txt - Saida: #{resultado1.clientes_atrasados}"

resultado2 = Banco.new(File.read("input.txt"))
resultado2.iniciar_expediente
puts "Entrada arquivo ./input.txt - Saida: #{resultado2.clientes_atrasados}"
