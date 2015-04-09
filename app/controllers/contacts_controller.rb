class ContactsController < ApplicationController

  def new
    @page_title = 'Contact us'
    @sidebar = 'contacts'
    @contact = Contact.new
  end

  def create
    contact = Contact.new(contact_params)
    if contact.save
      @page_title = 'Thank you!'
      @message = 'Thank you for inquiring about the Rivendell Program  One of our Admissions Counselors will be in touch with you soon.'
    else
      @page_title = 'Whoops!'
      @message = 'There was a problem with your submission.  Please press the back button and try again.'
    end
  end

  private

    def contact_params
      params.require(:contact).permit(:name, :email, :phone, :city, :state, :grad_year, :source, :referrer, :topic, :message)
    end

end
