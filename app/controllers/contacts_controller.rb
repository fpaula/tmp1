class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      #TODO: UserMailer.contact_us(@contact).deliver
      redirect_to contact_us_path, notice: translate('messages.contacts.notice')
    else
      render :new
    end
  end
end
