class SubscriptionsController < ApplicationController

  layout 'application_full'

  def create
    email_address = params[:email]
    if valid_email?(email_address)
      @page_title = 'Thank you!'
      Infusionsoft.contact_add_with_dup_check({ Email: email_address }, 'Email')
      @message = 'Thank you for subscribing to our newsletter!'
    else
      @page_title = 'Whoops!'
      @message = 'There was a problem with your email address.  Please try again below:'
    end
  end

  private

    def valid_email?(email_address)
      email_address.present? && (email_address =~ /^\S+@\S+\.\S+$/)
    end
end
