class EventsController < ApplicationController

  before_action   :set_body_id

  def index
    @page_title = 'Rivendell Lecture Series'
  end

  def show
    @page_title = 'Exceptional Events'
  end

  private

    def set_body_id
      @body_id = 'portfolio'
    end

end
