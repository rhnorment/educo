class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter     :set_events,  :set_testimonials

  private

    def set_events
      @events = Event.upcoming_events
    end
    helper_method   :set_events

    def set_testimonials
      @testimonials = Testimonial.all
    end
    helper_method   :set_testimonials

end
