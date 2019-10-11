
class Unidade < ActiveRecord::Base
  include ActionView::Helpers::TextHelper
  has_many :criancas
  has_many :funcionarios
  has_many :financeiros
  belongs_to :obreiro
  belongs_to :regiao
  has_many :users
  has_many :vagas



  ATIVIDADE = %w(COMERCIAL EDUCAÇÃO INDUSTRIAL PRESTAÇÃO_SERVIÇOS SERVIÇO_PÚBLICO OUTROS)
TIPO = ['CASA DA CRIANÇA', 'CIEP', 'CRECHE', 'EDUCAÇÃO ESPECIAL', 'EMEF', 'EMEI','SEDUC']

  def simplificada
    truncate(self.nome, :length=> 50)
  end

  def ativo
   if em_atividade == false then
    return "NÃO"
   else
      return "SIM"
   end
  end

  
end
