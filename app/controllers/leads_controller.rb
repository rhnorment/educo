class LeadsController < ApplicationController

  layout 'opt_in'

  caches_page :new

  def new
    @lead = Lead.new

    session[:trigger_tag_id] = Lead::TRIGGER_TAG_ID
  end

  def create
    lead = Lead.new(lead_params)

    lead.trigger_tag_id = session[:trigger_tag_id]
    lead.leadsource_id = session[:leadsource_id] || DEFAULT_LEADSOURCE_ID

    if lead.save
      @message = 'Please download your brochure'
    else
      render :new
    end
  end

  private

    def lead_params
      params.require(:lead).permit(:first_name, :last_name, :email, :phone)
    end

end
