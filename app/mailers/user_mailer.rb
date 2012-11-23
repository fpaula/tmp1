class UserMailer < ActionMailer::Base
  default from: "fpaula@gmail.com"

  def contact_us(contact)
    @contact = contact
    mail(:to => "fpaula@gmail.com", :subject => "Contato Leia na Web")
  end
end
