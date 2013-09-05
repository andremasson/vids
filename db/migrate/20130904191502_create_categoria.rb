class CreateCategoria < ActiveRecord::Migration
  def change
    create_table :categoria do |t|
      t.string :nome
      t.integer :objType

      t.timestamps
    end
  end
end
