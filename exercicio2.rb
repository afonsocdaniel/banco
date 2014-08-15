require './caixa'

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

    @clientes = input
  end
end