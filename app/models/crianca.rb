class Crianca < ActiveRecord::Base
  belongs_to :grupo
  belongs_to :regiao
  belongs_to :unidade
  has_many :observacao_criancas
  has_many :vaga_criancas
  has_many :vaga

  #validates_presence_of :unidade_id
  #validates_presence_of :regiao_id
  validates_presence_of :nome
  validates_presence_of :nascimento
  #validates_presence_of :unidade_ref
  #validates_presence_of :opcao1
  before_save  :maiusculo
  #before_update  :reclassificacao
  
  Status = %w(NA_DEMANDA CANCELADA MATRICULADA RECUSOU)


  #def reclassificacao
  #  data=   (self.nascimento).to_s
  #  hoje = Date.today.to_s
  #  final = '2012-07-01'
  #  if (hoje > data)  and (data >= final)
  #    if  (data <= Date.today.to_s and data >= '2015-07-01')
  #         self.grupo_id = 1
  #    else if(data <= '2015-06-30' and data >= '2014-07-01')
  #         self.grupo_id = 2
  #         else if(data <= '2014-06-30' and data >= '2014-01-01')
  #                self.grupo_id = 4
  #              else if (data <= '2013-12-31' and data >= '2013-07-01')
  #                      self.grupo_id = 8
  #                    else if (data <= '2013-06-30' and data >= '2012-07-01')
  #                            self.grupo_id = 5
  #                          else if (data <= '2012-06-30' and data >= '2011-07-01')
  #                                self.grupo_id = 6
  #                                    else if(data <= '2011-06-30'and data >= '2010-07-01')
  #                                          self.grupo_id = 7
  #                                        end
  #                                end
  #                          end
  #                    end
  #              end
  #         end
   #    end
 #end
  
#  end

def self.na_demanda
    Crianca.find(:all, :conditions => {:status => 'NA_DEMANDA' })
  end

 def self.matriculada
    Crianca.find(:all, :conditions => {:status => 'MATRICULADA' })
  end


 def self.cancelada
    Crianca.find(:all, :conditions => {:status => 'CANCELADA' })
  end


  def self.total_demanda
    Crianca.find(:all)
  end


  def self.na_demandaR
    Crianca.find(:all, :conditions => ["status = 'NA_DEMANDA' AND recadastrada = 1 AND vaga_id is null"])
  end


 def self.regiao_centro
      Crianca.find(:all, :conditions => ["status = 'NA_DEMANDA' and regiao_id = 101 and vaga_id is null"])
  end

 def self.regiao_jaguari
    Crianca.find(:all, :conditions => ["status = 'NA_DEMANDA' and regiao_id = 106 and vaga_id is null"])
  end


 def self.regiao_jbrasil
    Crianca.find(:all, :conditions => ["status = 'NA_DEMANDA' and regiao_id = 103 and vaga_id is null"])
  end


 def self.regiao_praia
    Crianca.find(:all, :conditions => ["status = 'NA_DEMANDA' and regiao_id = 104 and vaga_id is null"])
  end


 def self.regiao_smanoel
    Crianca.find(:all, :conditions => ["status = 'NA_DEMANDA' and regiao_id = 105 and vaga_id is null"])
  end


 def self.regiao_svito
    Crianca.find(:all, :conditions => ["status = 'NA_DEMANDA' and regiao_id = 107 and vaga_id is null"])
  end


 def self.regiao_zanaga
    Crianca.find(:all, :conditions => ["status = 'NA_DEMANDA' and regiao_id = 102 and vaga_id is null"])
  end


 def self.regiao_jpaz
    Crianca.find(:all, :conditions => ["status = 'NA_DEMANDA' and regiao_id = 110 and vaga_id is null"])
  end


 def self.regiao_pgramado
    Crianca.find(:all, :conditions => ["status = 'NA_DEMANDA' and regiao_id = 111 and vaga_id is null"])
  end


 def self.regiao_pnacoes
    Crianca.find(:all, :conditions => ["status = 'NA_DEMANDA' and regiao_id = 113 and vaga_id is null"])
  end


 def self.regiao_sdomingos
    Crianca.find(:all, :conditions => ["status = 'NA_DEMANDA' and regiao_id = 114 and vaga_id is null"])
  end


 def self.regiao_sgeronimo
    Crianca.find(:all, :conditions => ["status = 'NA_DEMANDA' and regiao_id = 109 and vaga_id is null"])
  end


 def self.regiao_sluiz
    Crianca.find(:all, :conditions => ["status = 'NA_DEMANDA' and regiao_id = 108 and vaga_id is null"])
  end


 def self.regiao_sroque
    Crianca.find(:all, :conditions => ["status = 'NA_DEMANDA' and regiao_id = 112 and vaga_id is null"])
  end


 def self.regiao_cjardim
    Crianca.find(:all, :conditions => ["status = 'NA_DEMANDA' and regiao_id = 118 and vaga_id is null"])
  end


 def self.regiao_frezarin
    Crianca.find(:all, :conditions => ["status = 'NA_DEMANDA' and regiao_id = 115 and vaga_id is null"])
  end


 def self.regiao_jalvorada
    Crianca.find(:all, :conditions => ["status = 'NA_DEMANDA' and regiao_id = 119 and vaga_id is null"])
  end


 def self.regiao_spaulo
    Crianca.find(:all, :conditions => ["status = 'NA_DEMANDA' and regiao_id = 117 and vaga_id is null"])
  end


 def self.regiao_jipiranga
    Crianca.find(:all, :conditions => ["status = 'NA_DEMANDA' and regiao_id = 116 and vaga_id is null"])
  end


 def opcao
    data=self.nascimento
  # Alterei a data de inicio de BI de 2016-02-01 para 2016-07-01 ###Alex 03/07/2017 10:00
  if (self.nascimento <= Date.today.to_s and self.nascimento >= DATAB1.to_date)
       self.grupo_id = 1
  # Alterei a data de inicio de BI de 2016-01-31 para 2016-06-30 ###Alex 03/07/2017 10:00
  else if(self.nascimento <= DATAB1.to_date and self.nascimento >= DATAB2.to_date)
                self.grupo_id = 2
       else if (self.nascimento < DATAB2.to_date and self.nascimento >= DATAM1A.to_date)
                    self.grupo_id = 4
            else if(self.nascimento < DATAM1A.to_date and self.nascimento >= DATAM1B.to_date)
                          self.grupo_id = 8
                  else if(self.nascimento < DATAM1B.to_date and self.nascimento >= DATAM2.to_date)
                              self.grupo_id = 5
                        else if(self.nascimento < DATAM2.to_date and self.nascimento >= DATAN1.to_date)
                                   self.grupo_id = 6
                                 else if(self.nascimento < DATAN1.to_date and self.nascimento >= DATAN2.to_date)
                                          self.grupo_id = 7
                                     end
                                end
                       end
                 end
            end
       end
  end

 
 end

   def self.nome_unidade(unidade)
    Unidade.find(unidade).nome
  end

  def self.todas_crianca_por_unidade(unidade)
     nome_unidade = Unidade.find(unidade).nome
    Crianca.find(:all, :conditions => ['opcao1 = ?', nome_unidade])
  end


  def self.matriculas_crianca_por_unidade(unidade)
    nome_unidade = Unidade.find(unidade).nome
    Crianca.find(:all, :conditions => ['opcao1 = ? and status = "MATRICULADA"',nome_unidade])
  end

  def self.nao_matriculas_crianca_por_unidade(unidade)
     nome_unidade = Unidade.find(unidade).nome
    Crianca.find(:all, :conditions => ['opcao1 = ? and status = "NA_DEMANDA"',nome_unidade])
  end

   def self.cancelada_crianca_por_unidade(unidade)
     nome_unidade = Unidade.find(unidade).nome
    Crianca.find(:all, :conditions => ['opcao1 = ? and status = "CANCELADA"',nome_unidade])
  end

  def self.demanda_por_regiao(regiao)
    regiao_id = Regiao.find(regiao).id
    regiao_nome = Regiao.find(regiao).nome
    @te1=Crianca.find(:all, :conditions => ['regiao_id = ? and status = "NA_DEMANDA"',regiao_id])
         t=0
  end

  def self.nao_matriculas_crianca_por_regiao(regiao)
     regiao_id = Regiao.find(regiao).id
     regiao_nome = Regiao.find(regiao).nome
     @teste=Crianca.find(:all, :conditions => ['regiao_id = ? and status = "NA_DEMANDA"',regiao_id])
          t=0
  end

  def self.cancelada_crianca_por_regiao(regiao)
     regiao_id = Regiao.find(regiao).id
     regiao_nome = Regiao.find(regiao).nome
     @tes2=Crianca.find(:all, :conditions => ['regiao_id = ? and status = "NA_DEMANDA"',regiao_id])
     t=0
  end

  def self.todas_crianca_por_regiao(regiao)
     regiao_id = Regiao.find(regiao).id
    @tes3=Crianca.find(:all, :conditions => ['regiao_id = ? and status = "NA_DEMANDA"',regiao_id])
    t=0
  end

  



  def self.demanda_total
    Crianca.find(:all, :conditions => ["status = 'NA_DEMANDA'"])

  end


   def self.matricula_total
    Crianca.find(:all, :conditions => ["status = 'MATRICULADA'"])
  end
  
  def maiusculo
    self.nome.upcase!
    if  !self.bairro.nil?
         self.bairro.upcase!
    end
    if  !self.complemento.nil?
        self.complemento.upcase!
    end
    if  !self.mae.nil?
      self.mae.upcase!
    end
    if  !self.necessidade.nil?
         self.necessidade.upcase!
    end
    if  !self.pai.nil?
         self.pai.upcase!
    end
    self.endereco.upcase!
    if  !self.responsavel_n.nil?
      self.responsavel_n.upcase!
    end
    if  !self.parentesco.nil?
      self.parentesco.upcase!
    end
    if  !self.local_trabalho.nil?
         self.local_trabalho.upcase!
    end
    if  !self.servidor_local.nil?
        self.servidor_local.upcase!
    end
    if  !self.nomerecado.nil?
        self.nomerecado.upcase!
    end
    if  !self.status.nil?
        self.status.upcase!
    end
    if  !self.justif_indicacao.nil?
        self.justif_indicacao.upcase!
    end
    if  !self.vinculo.nil?
        self.vinculo.upcase!
    end
    if  !self.end_indicacao.nil?
        self.end_indicacao.upcase!
    end
    if  !self.bairro_trab.nil?
        self.bairro_trab.upcase!
    end
        if  !self.atividade_autonomo.nil?
        self.atividade_autonomo.upcase!
    end




  end

 
end
