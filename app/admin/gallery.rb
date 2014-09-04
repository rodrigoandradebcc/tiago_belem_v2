ActiveAdmin.register Gallery do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :content,:photos, photo_attributes: [:id, :name, :image, :gallery_id]
   
   action_item :only => :show do
    link_to('Nova Foto', new_admin_photo_path)
  end
action_item :only => :index do
    link_to('Nova Foto', new_admin_photo_path)
  end
  form html: {multipart: true} do |f|
    f.inputs "Galeria" do
      f.input :name
      f.input :content, :label => "Comentários"
    end
   
f.actions
end

index do

  column :name
  column :content
  column "Photos in Gallery", :gallery do |gallery|
    gallery.photos.size
  end
  
  column "Release Date", :created_at
  actions do
     link_to('Nova Foto', new_admin_photo_path)
  end
end

end
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
