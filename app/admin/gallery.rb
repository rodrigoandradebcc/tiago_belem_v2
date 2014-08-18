ActiveAdmin.register Gallery do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, photos_attributes: [:gallery_id]

  index do
    column :name
   column "Photos in Gallery", :gallery do |gallery|
    gallery.photos.size 
  end
  column "Release Date", :created_at
end
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end


end
