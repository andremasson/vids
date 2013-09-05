class CreateDinamicas < ActiveRecord::Migration
  def change
    create_table :dinamicas do |t|
      t.string :objetivos
      t.integer :participantes
      t.text :material

      t.timestamps
    end
  end
end
