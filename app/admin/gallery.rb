ActiveAdmin.register Gallery do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :content,:photos, photos_attributes: [:id, :name, :image, :remote_image_url]


  index do

    column :name
    column :content
    column "Photos in Gallery", :gallery do |gallery|
      gallery.photos.size
      end
      column :photos do |gallery|
        link_to gallery.photos.name
      end
      column "Release Date", :created_at
    actions
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
