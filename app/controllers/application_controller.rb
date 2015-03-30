class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # before_filter     :set_events_collection,  :set_testimonials_collection

  private

    # def set_events_collection
     # @events_collection = Event.upcoming_events
    # end
    # helper_method   :set_events_collection

    # def set_testimonials_collection
      # @testimonials_collection = Testimonial.all
    # end
    # helper_method   :set_testimonials_collection

end
