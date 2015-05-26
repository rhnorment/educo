class LandingPagesController < ApplicationController

  layout 'landing'

  caches_page :student

  def student
    @page_title = 'An Exceptional College Core Program'

    session[:leadsource_id] = 265
  end

  def naums
    @page_title = 'Welcome NAUMS Members!'
    @heading = 'Welcome NAUMS Members!'
    @sub_heading = 'Thank you for visiting our site.'

    session[:leadsource_id] = 277
  end

end
