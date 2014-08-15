require 'rspec'
require './cliente'

describe Cliente do
  subject do
    Cliente.new
  end

  describe "#chegada" do
    it "deveria retornar o valor setado" do
      subject.chegada = 10
      expect(subject.chegada).to eql(10)
    end

    it "deveria poder setar" do
      expect(subject.chegada).to eql(nil)
      subject.chegada = 3
      expect(subject.chegada).to eql(3)
    end
  end

  describe "#duracao_atendimento" do
    it "deveria retornar o valor setado" do
      subject.chegada = 10
      expect(subject.chegada).to eql(10)
    end

    it "deveria poder setar" do
      expect(subject.duracao_atendimento).to eql(nil)
      subject.duracao_atendimento = 3
      expect(subject.duracao_atendimento).to eql(3)
    end
  end
end
