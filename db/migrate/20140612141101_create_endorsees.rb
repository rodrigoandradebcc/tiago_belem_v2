class CreateEndorsees < ActiveRecord::Migration
  def change
    create_table :endorsees do |t|
      t.string :link
      t.string :image

      t.timestamps
    end
  end
end
