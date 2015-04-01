class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter     :set_global_vars

  private

    def set_global_vars
      @company_name = 'Rivendell Program'
      @phone_number = '952-996-1451'
      @inquiry_email = 'inquiries@rivendellsanctuary.com'
      @sdc_url = 'http://sdcc.edu'
      @wasc_url = 'http://www.wascsenior.org'
      @twitter_url = 'https://twitter.com/RivendellSanct'
      @facebook_url = 'https://www.facebook.com/rivendellsanctuary'
      @pinterest_url = 'https://www.pinterest.com/rivendellsanct/'
      @google_plus_url = 'https://plus.google.com/108374067538365440572/posts'
    end
    # def set_events_collection
     # @events_collection = Event.upcoming_events
    # end
    # helper_method   :set_events_collection

    # def set_testimonials_collection
      # @testimonials_collection = Testimonial.all
    # end
    # helper_method   :set_testimonials_collection

end
