require './caixa'
require './cliente'

class Banco
  attr_accessor :caixas, :clientes, :clientes_atrasados, :hora_atendimento

  def initialize(input)
    input = input.split("\n")

    @caixas = input.shift.split().first.to_i
    @caixas = (1..@caixas).map do
      Caixa.new
    end

    @clientes = input.map do |cliente_info|
      c = Cliente.new(*cliente_info.split(" ").map(&:to_i))
    end

    @clientes_atrasados = 0
    @hora_atendimento = 0
  end

  def atendimentos_atrasados
    until @clientes.empty? do
      buscar_cliente
    end
  end

  def buscar_cliente
    @clientes.each do |cliente|
      return cliente if @hora_atendimento >= cliente.chegada
    end
  end
end