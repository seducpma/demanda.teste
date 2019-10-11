class CreateObservacaoCriancas < ActiveRecord::Migration
  def self.up
    create_table :observacao_criancas do |t|
      t.references :crianca_id
      t.string :observacao

      t.timestamps
    end
  end

  def self.down
    drop_table :observacao_criancas
  end
end
