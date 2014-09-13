class ContactMailer < ActionMailer::Base
  def contact_data(contact)
    @contact = contact

    mail to: 'rodrigoandradebcc@gmail.com', from: @contact.email, subject: 'SITE: CONTATO TIAGO'
  end

  def thanks(contact)
    @contact = contact

    mail to: contact.email, from: 'rodriguinhocarneiroandrade@hotmail.com', subject: 'Obrigado por entrar em contato!'
  end
end
