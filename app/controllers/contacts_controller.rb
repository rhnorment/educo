class ContactsController < ApplicationController

  def new
    @page_title = 'Contact us'
    @sidebar = 'contacts'
    @contact = Contact.new
    add_breadcrumb  @page_title, :new_contact_path
  end

  def create

  end

end
