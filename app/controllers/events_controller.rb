class EventsController < ApplicationController

  # before_action   :walled_garden if :production?
  before_action   :set_body_id

  def index
    @page_title = 'Rivendell Lecture Series'
    @events = Event.upcoming.limit(3)
  end

  def show
    @page_title = 'Exceptional Events'
    @event = Event.find_by!(slug: params[:id])
  end

  private

    def set_body_id
      @body_id = 'portfolio'
    end

end
