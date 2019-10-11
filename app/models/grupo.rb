class Grupo < ActiveRecord::Base
  has_many :criancas
  has_many :unidades
  has_many :vagas
end
