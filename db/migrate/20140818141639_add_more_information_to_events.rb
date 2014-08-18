class AddMoreInformationToEvents < ActiveRecord::Migration
  def change
    add_column :events, :more_information, :string
  end
end
