class LandingPagesController < ApplicationController

  layout 'landing'

  caches_page :classical_conversations

  def classical_conversations
    @page_title = 'Welcome Classical Conversations!'


  end

end
