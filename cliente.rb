class Cliente
  attr_accessor :chegada, :duracao_atendimento

  def initialize(chegada, duracao_atendimento)
    @chegada = chegada
    @duracao_atendimento = duracao_atendimento
  end
end
