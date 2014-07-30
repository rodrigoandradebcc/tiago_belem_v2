class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.text :link

      t.timestamps
    end
  end
end
