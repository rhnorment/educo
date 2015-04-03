class ContactsController < ApplicationController

  layout 'application_full'

  def new
    @page_title = 'Contact us'
    add_breadcrumb  @page_title, :new_contact_path
  end

  def create

  end

end
