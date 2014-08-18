class AddContentToGalleries < ActiveRecord::Migration
  def change
    add_column :galleries, :content, :text
  end
end
