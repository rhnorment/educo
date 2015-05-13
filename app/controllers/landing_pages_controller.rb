class LandingPagesController < ApplicationController

  layout 'landing'

  def student
    @page_title = 'An Exceptional College Core Program'
  end

  def parent
  end

end
