require 'rspec'
require './cliente'

describe Cliente do
  subject do
    Cliente.new
  end

  describe "#initialize" do
    it "deveria configurar o valor default para o atributo 'chegada' como zero" do
      expect(subject.chegada).to eql(0)
    end

    it "deveria configurar o valor default para o atributo 'duracao_atendimento' como zero" do
      expect(subject.duracao_atendimento).to eql(0)
    end
  end

  describe "#chegada" do
    it "deveria retornar o valor setado" do
      expect(subject.chegada).to eql(0)
    end

    it "deveria poder setar" do
      subject.chegada = 3
      expect(subject.chegada).to eql(3)
    end
  end

  describe "#duracao_atendimento" do
    it "deveria retornar o valor setado" do
      expect(subject.duracao_atendimento).to eql(0)
    end

    it "deveria poder setar" do
      subject.duracao_atendimento = 3
      expect(subject.duracao_atendimento).to eql(3)
    end
  end
end
