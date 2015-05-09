class ContactsController < ApplicationController

  def new
    @body_id = 'contact-us'
    @contact = Contact.new
  end

  def create
    @body_id = 'contact-us'
    @contact = Contact.new(contact_params)

    if @contact.save
      @page_title = 'Thank you!'
      @message = 'Thank you for inquiring about Rivendell 5-Pursuits Program.  One of our staff will be in touch with you soon.'
    else
      @page_title = 'Whoops!'
      @message = 'There was a problem with your submission.  Please press the back button and try again.'
    end
  end

  private

    def contact_params
      params.require(:contact).permit(:name, :email, :phone, :message)
    end

end
