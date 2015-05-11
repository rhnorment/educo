class LeadsController < ApplicationController

  layout 'opt_in'

  def new
    @lead = Lead.new
  end

  def create
    lead = Lead.new(lead_params)

    lead.tag_id = session[:tag_id] if session[:tag_id]

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
