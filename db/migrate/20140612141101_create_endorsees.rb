class CreateEndorsees < ActiveRecord::Migration
  def change
    create_table :endorsees do |t|
      t.string :link

      t.timestamps
    end
  end
end
