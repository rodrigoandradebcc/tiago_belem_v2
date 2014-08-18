ActiveAdmin.register Event do

  permit_params :event_date, :time, :name, :place, :more_information
  index do
    column "Data do Evento", :event_date
    column "Hora", :time
    column "Nome", :name
    column "Local", :place
    column "Mais Informações", :more_information
    actions
  end
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end


end
