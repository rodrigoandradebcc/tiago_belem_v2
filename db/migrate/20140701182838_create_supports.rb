class CreateSupports < ActiveRecord::Migration
  def change
    create_table :supports do |t|
      t.string :link

      t.timestamps
    end
  end
end
