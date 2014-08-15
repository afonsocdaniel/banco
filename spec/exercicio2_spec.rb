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
      expect(subject.caixas.size).to eql(3)
    end

    it "deveria criar os caixas" do
      expect(subject.caixas[0].instance_of?(Caixa)).to be_truthy
      expect(subject.caixas[1].instance_of?(Caixa)).to be_truthy
      expect(subject.caixas[2].instance_of?(Caixa)).to be_truthy
    end

    it "deveria iniciar como zero o horario de disponibilidade de cada caixa" do
      expect(subject.caixas[0].disponivel_em).to eql(0)
      expect(subject.caixas[1].disponivel_em).to eql(0)
      expect(subject.caixas[2].disponivel_em).to eql(0)
    end

    it "deveria configurar as informacoes dos clientes" do
      expect(subject.clientes.size).to eql(16)
    end

    it "deveria criar os clientes" do
      expect(subject.clientes[0].instance_of?(Cliente)).to be_truthy
      expect(subject.clientes[1].instance_of?(Cliente)).to be_truthy
      expect(subject.clientes[2].instance_of?(Cliente)).to be_truthy
    end

    it "deveria configurar os valores de cada cliente" do
      expect(subject.clientes[0].chegada).to eql(0)
      expect(subject.clientes[0].duracao_atendimento).to eql(10)
      expect(subject.clientes[1].chegada).to eql(0)
      expect(subject.clientes[1].duracao_atendimento).to eql(10)
    end
  end
end