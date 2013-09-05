class CreateDinamicasVideos < ActiveRecord::Migration
  def change
    create_table :dinamicas_videos do |t|
      t.belongs_to :video
      t.belongs_to :dinamica
    end
  end
end
