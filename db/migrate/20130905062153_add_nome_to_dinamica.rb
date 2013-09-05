class AddNomeToDinamica < ActiveRecord::Migration
  def change
    add_column :dinamicas, :nome, :string
  end
end
