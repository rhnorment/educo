class LandingPagesController < ApplicationController

  layout 'landing'

  caches_page :student

  def student
    @page_title = 'An Exceptional College Core Program'

    session[:leadsource_id] = Lead::FACEBOOK_ID
  end

end
