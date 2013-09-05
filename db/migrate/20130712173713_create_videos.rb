class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :titulo
      t.string :autor
      t.decimal :duracao
      t.text :resumo

      t.timestamps
    end
  end
end
