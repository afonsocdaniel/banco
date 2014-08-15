class Banco
  attr_accessor :caixas, :clientes

  def initialize(input)
    input = input.split("\n")

    @caixas = input.shift.split().first.to_i
    @clientes = input
  end
end