class EventsController < ApplicationController

  def index
    @body_id = 'portfolio'
    @page_title = 'Rivendell Lecture Series'
    @events = Event.upcoming.limit(3)
  end

  def show
    @body_id = 'portfolio-item'
    @page_title = 'Exceptional Events'
    @event = Event.find_by!(slug: params[:id])
  end

end
