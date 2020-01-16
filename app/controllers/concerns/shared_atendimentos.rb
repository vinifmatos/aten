module SharedAtendimentos
  extend ActiveSupport::Concern

  private

  def set_atendimento
    @atendimento = Atendimento.find(params[:id])
  end

  def set_assuntos
    @assuntos = Assunto.ativos.map { |a| [a.descricao, a.id] }
  end
end