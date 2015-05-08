class ContactsController < ApplicationController

  def new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to root_url
    else
      redirect_to root_url
    end
  end

  private

    def contact_params
      params.require(:contact).permit(:name, :email, :phone, :message)
    end

end
