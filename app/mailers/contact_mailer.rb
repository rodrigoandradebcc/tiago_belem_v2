class ContactMailer < ActionMailer::Base
  def contact_data(contact)
    @contact = contact

    mail to: 'rodrigoandradebc@gmail.com', from: @contact.email, subject: 'SITE: CONTATO TIAGO'
  end

  def thanks(contact)
    @contact = contact

    mail to: contact.email, from: 'rodriguinhocarneiroandrade@hotmail.com', subject: 'Obrigado, em breve vamos entrar em contato!'
  end
end
