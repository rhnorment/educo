class LandingPagesController < ApplicationController

  layout 'landing'

  def student
    @lead = Lead.new
  end

  def parent
  end
end
