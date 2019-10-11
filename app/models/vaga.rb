class Vaga < ActiveRecord::Base

  belongs_to :unidade
  belongs_to :classe
  belongs_to :crianca
   belongs_to :grupo
  #has_many :professors

end
