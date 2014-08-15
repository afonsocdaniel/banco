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
      expect(subject.hora_atendimento_agencia).to eql(0)
    end

    it "deveria comecar com o numero de clientes atrasados zero" do
      expect(subject.clientes_atrasados).to eql(0)
    end
  end

  describe "#iniciar_expediente" do
    let :input do
"3 16
0 10"
    end

    context "com apenas 1 cliente" do
      subject do
        Banco.new(input)
      end

      before do
        subject.iniciar_expediente
      end

      it "deveria ter a hora_atendimento_agencia 1" do
        expect(subject.hora_atendimento_agencia).to eql(1)
      end

      it "deveria ter dois caixas livres" do
        expect(subject.caixas[1].disponivel_em).to eql(0)
        expect(subject.caixas[2].disponivel_em).to eql(0)
      end

      it "deveria ter um caixa ocupado" do
        expect(subject.caixas[0].disponivel_em).to eql(10)
      end
    end
  end

  describe "#atendimentos_atrasados" do
    context "cliente atrasado" do
      before do
        subject.hora_atendimento_agencia = 30
        expect(subject.clientes_atrasados).to eql(0)
      end

      it "deveria adicionar mais um cliente a lista" do
        subject.atendimentos_atrasados(1)
        expect(subject.clientes_atrasados).to eql(1)
      end
    end

    context "cliente nao atrasado" do
      before do
        subject.hora_atendimento_agencia = 30
        expect(subject.clientes_atrasados).to eql(0)
      end

      it "deveria manter a lista de clientes atrasados limpa" do
        subject.atendimentos_atrasados(10)
        expect(subject.clientes_atrasados).to eql(0)
      end
    end
  end

  describe "#atendimento_concluido" do
    it "deveria remover o primeiro cliente da fila" do
      subject.atendimento_concluido
      expect(subject.clientes.size).to eql(15)
    end
  end
end