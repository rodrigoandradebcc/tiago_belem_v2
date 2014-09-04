ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span ("Bem vindo à area administrativa do site")
        small ("Leia as instruções antes de navegar")
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
   
    columns do
      column do
        panel "Eventos recentes" do
          ul do
            Event.last(5).map do |event|
             
             li link_to(event.name, admin_event_path(event)) 

            end
         end
        end
        panel "Galerias recentes" do
          ul do
            Gallery.last(5).map do |gallery|
             
             li link_to(gallery.name, admin_gallery_path(gallery)) 

            end
         end

        end
        panel "Videos recentes" do
          ul do
            Movie.last(5).map do |movie|
             
             li link_to(movie.link, admin_movie_path(movie)) 

            end
         end
        end
        panel "Musicas recentes" do
          ul do
            Music.last(5).map do |music|
             
             li link_to(music.link, admin_music_path(music)) 

            end
         end
        end
      end



      column do
         panel "Instruções" do
           para "Quando criar uma galeria, adicione fotos para a mesma clicando no botão 'Nova Foto' na tela logo após a criação da galeria,
             ou no link 'Photos' na parte superior da página. Lembre-se, não há galerias de fotos sem fotos.
             "
            para "Obs: caso não seja criado ao menos uma foto para cada galeria não será possível acessar a galeria de fotos no layout principal."
            para "Para adicionar um video, basta enviar o 'link' direto do YouTube."
            para "Exemplo: https://www.youtube.com/watch?v=-Tdu4uKSZ3M"

         end
      end
  end
    
       
     end
  end # content


