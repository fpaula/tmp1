class ContactsController < ApplicationController
  def new
    @contact = Contact.new
    respond_to { |format| format.html }
  end

  def create
    @contact = Contact.new(params[:contact])
    respond_to do |format|
      if @contact.save
        #TODO
        #UserMailer.contact_us(@contact).deliver
        format.html { redirect_to contact_us_path, notice: translate('messages.contacts.notice') }
      else
        format.html { render action: 'new' }
      end
    end
  end
end
