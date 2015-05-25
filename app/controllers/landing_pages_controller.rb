class LandingPagesController < ApplicationController

  layout 'landing'

  caches_page :student

  def student
    @page_title = 'An Exceptional College Core Program'

    session[:leadsource_id] = 265
    session[:trigger_tag_id] = 271
  end

  def eight_ways
    @page_title = '8 Ways Rivendell Delivers the College Core'
  end

end
