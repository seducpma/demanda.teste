# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20190821175723) do

  create_table "bairros", :force => true do |t|
    t.string  "nome",      :limit => 30
    t.integer "regiao_id", :limit => 1,  :default => 1,    :null => false
    t.boolean "ativo",                   :default => true, :null => false
  end

  create_table "criancas", :force => true do |t|
    t.string   "nome",             :limit => 200
    t.string   "mae",              :limit => 200
    t.string   "pai",              :limit => 200
    t.string   "sexo",             :limit => 20
    t.integer  "unidade_id"
    t.datetime "nascimento"
    t.boolean  "n_especial"
    t.string   "necessidade",      :limit => 100
    t.integer  "grupo_id"
    t.integer  "regiao_id"
    t.string   "endereco",         :limit => 100
    t.string   "numero",           :limit => 10
    t.string   "complemento",      :limit => 100
    t.string   "bairro",           :limit => 100
    t.string   "tel1",             :limit => 100
    t.string   "tel2",             :limit => 100
    t.string   "nomerecado",       :limit => 100
    t.string   "celular",          :limit => 100
    t.string   "responsavel_n",    :limit => 100
    t.boolean  "responsavel"
    t.string   "parentesco",       :limit => 100
    t.boolean  "trabalho"
    t.string   "local_trabalho",   :limit => 100
    t.string   "fone_trabalho",    :limit => 50
    t.boolean  "irmao"
    t.string   "unidade_i",        :limit => 100
    t.boolean  "transferencia"
    t.string   "unidade_t",        :limit => 100
    t.boolean  "servidor_publico"
    t.string   "servidor_local",   :limit => 100
    t.string   "opcao1",           :limit => 200
    t.string   "opcao2",           :limit => 200
    t.string   "opcao3",           :limit => 200
    t.string   "periodo",          :limit => 20
    t.string   "obs",              :limit => 900
    t.string   "status",           :limit => 40,  :default => "NA_DEMANDA"
    t.string   "matriculado",      :limit => 100
    t.boolean  "vaga"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grupos", :force => true do |t|
    t.string "nome",      :limit => 20
    t.string "descricao", :limit => 60
  end

  create_table "informativos", :force => true do |t|
    t.text     "mensagem"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "observacao_criancas", :force => true do |t|
    t.integer  "crianca_id",                 :null => false
    t.string   "observacao",  :limit => 800
    t.string   "funcionario", :limit => 50
    t.date     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regiaos", :force => true do |t|
    t.string "nome", :limit => 40
  end

  create_table "roles", :force => true do |t|
    t.string "name"
  end

  create_table "roles_users", :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  add_index "roles_users", ["role_id"], :name => "index_roles_users_on_role_id"
  add_index "roles_users", ["user_id"], :name => "index_roles_users_on_user_id"

  create_table "unidades", :force => true do |t|
    t.string   "nome"
    t.integer  "tipo"
    t.integer  "regiao_id",          :limit => 1
    t.integer  "regiao_id_anterior", :limit => 1,                :null => false
    t.integer  "ativo",                           :default => 1, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "email"
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.string   "activation_code",           :limit => 40
    t.datetime "activated_at"
    t.integer  "unidade_id",                              :default => 0
    t.string   "layout",                                  :default => "application"
    t.string   "password_reset_code"
  end

  create_table "vaga_criancas", :force => true do |t|
    t.integer  "crianca_id",                   :null => false
    t.string   "unidade",       :limit => 100
    t.string   "resposta",      :limit => 5
    t.string   "quem",          :limit => 100
    t.string   "justificativa", :limit => 300
    t.string   "observacao",    :limit => 800
    t.string   "funcionario",   :limit => 50
    t.date     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vagas", :force => true do |t|
    t.integer  "crianca_id"
    t.integer  "unidade_id"
    t.string   "status"
    t.datetime "data"
    t.string   "obs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
