class ContactsController < ApplicationController
    def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
      redirect_to root_path
      flash.now[:notice] = 'Merci pour votre message !'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
end
