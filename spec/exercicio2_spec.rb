require 'rspec'
require './exercicio2'

describe Banco do
  let :input do
    File.read("input.txt")
  end

  subject do
    Banco.new(input)
  end

  describe "#initialize" do
    it "deveria configurar o numero de caixas" do
      expect(subject.caixas).to eql(3)
    end

    it "deveria configurar as informacoes dos clientes" do
      expect(subject.clientes.size).to eql(16)
    end
  end
end