class LandingPagesController < ApplicationController

  layout 'landing'

  def student
    session[:tag_id] = 271

    @lead = Lead.new
  end

  def parent
  end
end
