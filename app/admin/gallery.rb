ActiveAdmin.register Gallery do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :content, photos_attributes: [:gallery_id]

   form do |f|
      f.inputs "Details" do
        f.input :name
        f.input :content
      end
      f.inputs "Content" do
        
      end
      f.actions
    end

  index do
    column :name
    column :content
   column "Photos in Gallery", :gallery do |gallery|
    gallery.photos.size
    column :edit 
  end
  column "Release Date", :created_at
  actions
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
