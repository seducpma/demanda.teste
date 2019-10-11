class CreateVagas < ActiveRecord::Migration
  def self.up
    create_table :vagas do |t|
      t.integer :crianca_id
      t.integer :unidade_id
      t.string :status
      t.datetime :data
      t.string :obs

      t.timestamps
    end
  end

  def self.down
    drop_table :vagas
  end
end
