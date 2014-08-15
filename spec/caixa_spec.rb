require 'rspec'
require './caixa'

describe Caixa do
  subject do
    Caixa.new
  end

  describe "#initialize" do
    it "deveria configurar o valor default do atributo 'disponivel_em' como zero" do
      expect(subject.disponivel_em).to eql(0)
    end
  end

  describe "#disponivel_em" do
    it "deveria retornar o valor setado" do
      expect(subject.disponivel_em).to eql(0)
    end

    it "deveria poder setar" do
      subject.disponivel_em = 3
      expect(subject.disponivel_em).to eql(3)
    end
  end
end