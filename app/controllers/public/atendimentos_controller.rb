class Public::AtendimentosController < ApplicationController
  include SharedAtendimentos

  before_action :set_atendimento, only: :protocolo
  before_action :set_assuntos, only: [:new, :create]

  def new
    @atendimento = Atendimento.new
  end

  def protocolo
  end
  
  def create
    @atendimento = Atendimento.new(atendimento_params)

    respond_to do |format|
      if @atendimento.save
        format.html { redirect_to public_protocolo_atendimento_path(@atendimento), notice: 'Atendimento was successfully created.' }
        format.json { render :show, status: :created, location: @atendimento }
      else
        format.html { render :new }
        format.json { render json: @atendimento.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def consulta
  end

  def pesquisa
    @atendimento = Atendimento.find_by(numero: params[:numero], ano: params[:ano])
  end

  private

  def atendimento_params
    params.require(:atendimento).permit(:numero, :ano, :assunto_id, :data_abertura, :data_finalizacao, :data_arquivamento, :texto)
  end
end
