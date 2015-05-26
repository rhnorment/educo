class LandingPagesController < ApplicationController

  layout 'landing'

  caches_page :student

  def student
    @page_title = 'An Exceptional College Core Program'

    session[:leadsource_id] = 265
  end

  def naums
    @page_title = 'Welcome NAUMS Members!'

    session[:leadsource_id] = 277
  end

end
