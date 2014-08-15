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

    it "deveria configurar os clientes" do
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

    it "deveria comecar o atendimento no banco como zero" do
      expect(subject.hora_atendimento).to eql(0)
    end

    it "deveria comecar com o numero de clientes atrasados zero" do
      expect(subject.clientes_atrasados).to eql(0)
    end
  end

  describe "#buscar_cliente" do
    context "retornando o cliente" do
      before do
        subject.hora_atendimento = 10
        subject.clientes.first.chegada = 10
      end

      it "caso esteja no seu horario" do
        expect(subject.buscar_cliente).to eql(subject.clientes.first)
      end
    end
  end
end