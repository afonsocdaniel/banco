require './caixa'
require './cliente'

class Banco
  attr_accessor :caixas, :clientes

  def initialize(input)
    input = input.split("\n")

    @caixas = input.shift.split().first.to_i
    @caixas = (1..@caixas).map do
      c = Caixa.new
      c.disponivel_em = 0
      c
    end

    @clientes = input.map do |cliente_info|
      c = Cliente.new
      c.chegada, c.duracao_atendimento = *cliente_info.split(" ").map(&:to_i)
      c
    end
  end
end
