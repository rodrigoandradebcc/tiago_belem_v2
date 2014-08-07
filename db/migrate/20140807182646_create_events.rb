class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :event_date
      t.datetime :time
      t.string :name
      t.string :place

      t.timestamps
    end
  end
end
