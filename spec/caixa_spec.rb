require 'rspec'
require './caixa'

describe Caixa do
  subject do
    Caixa.new
  end

  describe "#disponivel_em" do
    it "deveria retornar o valor setado" do
      subject.disponivel_em = 10
      expect(subject.disponivel_em).to eql(10)
    end

    it "deveria poder setar" do
      expect(subject.disponivel_em).to eql(nil)
      subject.disponivel_em = 3
      expect(subject.disponivel_em).to eql(3)
    end
  end
end